#!/usr/bin/env python3

"""
Find built web pages that appear to have broken cite-proc citations in them.
"""

import re
import pathlib

site_dir = pathlib.Path(__file__).parent.parent / "_site"

for root, dirs, files in site_dir.walk():
    for f in files:
        if not f.endswith('.html'):
            continue
        path = root / f
        html = path.open().read()
        found = re.findall(r'<strong>(\w+:\w+)\?</strong>', html)
        if len(found) > 0:
            url = str(path).replace('_site', 'https://inkdroid.org')
            print(url, found)

