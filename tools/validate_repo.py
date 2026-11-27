#!/usr/bin/env python3
"""Verifica links Markdown locais, manifesto e placeholders sem acesso à rede."""
from pathlib import Path
import re, csv, sys
root=Path(__file__).resolve().parents[1]
errors=[]
links=0
for md in root.rglob('*.md'):
    if any(part in {'.git','local-private'} for part in md.relative_to(root).parts): continue
    s=md.read_text(encoding='utf-8')
    # only inline markdown links, excluding images, external schemes and anchor-only links
    for dest in re.findall(r'(?<!!)\[[^\]]+\]\(([^)]+)\)',s):
        path=dest.strip().split(' ')[0].split('#')[0].strip('<>')
        if not path or re.match(r'^[a-z][\w+.-]*:',path,re.I) or path.startswith('/'): continue
        links+=1
        target=(md.parent/path)
        if not target.exists(): errors.append(f'{md.relative_to(root)} -> missing {path}')
# specific expectations
for relative in ['README.md','ROADMAP.md','THE-JOURNEY/TIMELINE.md','INTEGRATIONS/project-catalog.csv']:
    if not (root/relative).is_file(): errors.append(f'missing expected {relative}')
try:
    with (root/'INTEGRATIONS/project-catalog.csv').open(encoding='utf-8',newline='') as f:
        rows=list(csv.DictReader(f))
    if not rows: errors.append('empty project catalog')
    for r in rows:
        if not (root/r['canonical_doc']).is_file(): errors.append('catalog missing file '+r['canonical_doc'])
except Exception as ex: errors.append(str(ex))
print(f'Markdown local links checked: {links}')
if errors:
    for e in errors: print('ERROR:',e)
    sys.exit(1)
print('PASS: structure and links valid (not a secret or editorial audit)')
