import Cocoa
import WebKit
// Bir sayfanın görüntüsünü WebKit ile PNG olarak alır.
// snap <url> <out.png> <genişlik> <yükseklik, 0 = sayfa yüksekliği> [bekleme sn] [dark]
// SNAP_JS ortam değişkeni verilirse sayfa yüklenince o kod çalıştırılır, bekleme ondan sonra başlar.
let a = CommandLine.arguments
let url = URL(string: a[1])!, out = a[2]
let w = Double(a[3])!, h0 = Double(a[4])!, delay = a.count > 5 ? Double(a[5])! : 1.5
func shoot(_ wv: WKWebView, _ h: Double) {
  let c = WKSnapshotConfiguration(); c.rect = CGRect(x: 0, y: 0, width: w, height: h)
  wv.takeSnapshot(with: c) { img, err in
    guard let img = img, let t = img.tiffRepresentation, let r = NSBitmapImageRep(data: t),
          let png = r.representation(using: .png, properties: [:]) else { print("hata:", err as Any); exit(1) }
    try! png.write(to: URL(fileURLWithPath: out)); print("ok", r.pixelsWide, r.pixelsHigh); exit(0)
  }
}
final class D: NSObject, WKNavigationDelegate {
  func webView(_ wv: WKWebView, didFinish n: WKNavigation!) {
    if let js = ProcessInfo.processInfo.environment["SNAP_JS"] { wv.evaluateJavaScript(js, completionHandler: nil) }
    DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
      wv.evaluateJavaScript("document.getAnimations().forEach(function(x){try{x.finish()}catch(e){}});Math.ceil(document.documentElement.getBoundingClientRect().height)") { v, _ in
        var h = h0
        if h == 0, let n = v as? NSNumber { h = n.doubleValue }
        wv.window?.setContentSize(NSSize(width: w, height: h)); wv.frame = CGRect(x: 0, y: 0, width: w, height: h)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) { shoot(wv, h) }
      }
    }
  }
}
let app = NSApplication.shared
app.setActivationPolicy(.prohibited)
let wv = WKWebView(frame: CGRect(x: 0, y: 0, width: w, height: h0 > 0 ? h0 : 800))
wv.appearance = NSAppearance(named: a.count > 6 && a[6] == "dark" ? .darkAqua : .aqua)
let win = NSWindow(contentRect: wv.frame, styleMask: [.borderless], backing: .buffered, defer: false)
win.contentView = wv
win.setFrameOrigin(NSPoint(x: -8000, y: -8000)); win.orderFrontRegardless()
let d = D(); wv.navigationDelegate = d
wv.load(URLRequest(url: url))
DispatchQueue.main.asyncAfter(deadline: .now() + 40) { print("zaman aşımı"); exit(2) }
app.run()
