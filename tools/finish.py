"""Ham PNG'lerin köşelerini yuvarlar, GitHub'ın açık/koyu arka planına oturtur ve assets/ altına JPEG yazar."""
import os
import sys

from PIL import Image, ImageDraw

src, dst = sys.argv[1], sys.argv[2]
BG = {'light': (255, 255, 255), 'dark': (13, 17, 23)}  # GitHub sayfa arka planı
# ad: (köşe yarıçapı px, çıkış genişliği px)
SPEC = {'banner': (48, 1700), 'aile': (48, 1660), 'ride': (48, 1660),
        'w1': (36, 840), 'w2': (36, 840), 'w3': (36, 840), 'w4': (36, 840), 'w7': (36, 840)}
NAMES = {'w1': 'tvplus', 'w2': 'unfollow-radar', 'w3': 'dogum-gunu', 'w4': 'cleanyourtv', 'w7': 'github-basarimlari'}

for key, (radius, width) in SPEC.items():
    for theme in ('light', 'dark'):
        im = Image.open(f'{src}/{key}-{theme}.png').convert('RGB')
        mask = Image.new('L', im.size, 0)
        ImageDraw.Draw(mask).rounded_rectangle([0, 0, im.width - 1, im.height - 1], radius=radius, fill=255)
        out = Image.new('RGB', im.size, BG[theme])
        out.paste(im, (0, 0), mask)
        out = out.resize((width, round(out.height * width / out.width)), Image.LANCZOS)
        path = f'{dst}/{NAMES.get(key, key)}-{theme}.jpg'
        out.save(path, quality=88, subsampling=0, optimize=True, progressive=True)
        print(os.path.basename(path), out.size)
