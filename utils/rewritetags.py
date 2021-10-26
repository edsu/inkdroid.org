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
        elif (m := re.search(r'^ *- (.+)', line)) and in_tags:
            tag = m.group(1)
            if tag == 'archive':
                tag = 'archives'
            lines.append(f'- {tag}')
        elif line:
            in_tags = False
            lines.append(line)
    lines.append('---')

    frontmatter = '\n'.join(lines)
    p.open('w').write(f'{frontmatter}{body}')
