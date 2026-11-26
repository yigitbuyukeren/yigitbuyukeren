#!/usr/bin/env python3
"""Check local links and image references in the profile README.

README.md and assets/ were intentionally removed in ec08d87. An absent README
is a valid, explicit state rather than a skipped failure; if a README is ever
restored, its local links and image targets are checked again.
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
README = ROOT / "README.md"
if not README.is_file():
    print("OK: README.md yok (ec08d87 ile kaldırıldı); doğrulanacak yerel hedef yok.")
    sys.exit(0)
TEXT = README.read_text(encoding="utf-8")
TARGETS = set()


def add(value: str) -> None:
    value = value.strip().split()[0].split("#", 1)[0]
    if value and not value.startswith(("http://", "https://", "mailto:", "data:", "#")):
        TARGETS.add(value)


for pattern in (
    r'(?:src|href)="([^"]+)"',
    r"!\[[^\]]*\]\(([^)]+)\)",
    r"(?<!!)\[[^\]]*\]\(([^)]+)\)",
):
    for match in re.finditer(pattern, TEXT):
        add(match.group(1))
for match in re.finditer(r'srcset="([^"]+)"', TEXT):
    for candidate in match.group(1).split(","):
        add(candidate)

missing = sorted(target for target in TARGETS if not (ROOT / target).exists())
if missing:
    print("Eksik yerel hedefler:")
    for target in missing:
        print(f"  {target}")
    sys.exit(1)
print(f"OK: README.md içinde {len(TARGETS)} yerel hedef doğrulandı.")
