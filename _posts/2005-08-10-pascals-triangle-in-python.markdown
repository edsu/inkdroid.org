---
layout: post
status: publish
published: true
title: pascal's triangle in python
author:
  display_name: Administrator
  login: admin
  email: ed.summers@gmail.com
  url: http://www.inkdroid.org
author_login: admin
author_email: ed.summers@gmail.com
author_url: http://www.inkdroid.org
wordpress_id: 20
wordpress_url: http://www.inkdroid.org/journal/?p=20
date: '2005-08-10 19:53:07 +0000'
date_gmt: '2005-08-11 02:53:07 +0000'
tags: []
comments: []
---

<p>I mentioned Pascal's Triangle in the previous post, and after typing in the Oz code decided to make a Pascal's Triangle pretty printer in python. </p>
<pre lang="python">
from sys import argv

def pascal(n):
    if n == 1:
        return [ [1] ]
    else:
        result = pascal(n-1)
        lastRow = result[-1]
        result.append( [ (a+b) for a,b in zip([0]+lastRow, lastRow+[0]) ] )
        return result

def pretty(tree):
    if len(tree) == 0: return ''
    line = '  ' * len(tree)
    for cell in tree[0]:
        line += '  %2i' % cell
    return line + &quot;\n&quot; + pretty(tree[1:])

if __name__ == '__main__':
    print pretty( pascal( int(argv[1]) ) ) 
</pre>
<p>Which, when run with can generate something like this:</p>
<pre>

biblio:~/Projects/bookclub ed$ python pascal.py 9
                     1
                   1   1
                 1   2   1
               1   3   3   1
             1   4   6   4   1
           1   5  10  10   5   1
         1   6  15  20  15   6   1
       1   7  21  35  35  21   7   1
     1   8  28  56  70  56  28   8   1 
</pre>
<p>It's been fun reading up on the <a href="http://mathforum.org/dr.math/faq/faq.pascal.triangle.html">uses</a> for Pascal's triangle, although I imagine this is old hat for people more familiar with math than I. Still I think getting through this tome will be time well spent in the long run.</p>
