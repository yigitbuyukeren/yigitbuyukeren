#!/usr/bin/env python3
"""Check local links and image references in the profile README."""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TEXT = (ROOT / "README.md").read_text(encoding="utf-8")
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
print(f"OK: {len(TARGETS)} yerel hedef doğrulandı.")
