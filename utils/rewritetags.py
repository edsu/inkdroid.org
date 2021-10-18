#!/usr/bin/env python3

import re
import pathlib

for p in pathlib.Path('_posts').iterdir():
    md = p.open().read()
    start, frontmatter, body = md.split('---', 2)

    lines = ['---']
    in_tags = False
    for line in frontmatter.splitlines():
        line = line.rstrip()
        if line == "tags:":
            lines.append("tags:")
            in_tags = True
        elif in_tags and "-" in line:
            line = line.replace('-', '')
            line = line.lower()
            line = line.strip()
            line = line.replace(' ', '-')
            lines.append(f'- {line}')
        elif line:
            in_tags = False
            lines.append(line)
    lines.append('---')

    frontmatter = '\n'.join(lines)
    p.open('w').write(f'{frontmatter}\n{body}')
