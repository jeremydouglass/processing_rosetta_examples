"""
SierpinskiArrowheadCurve -- Recursive
http://rosettacode.org/wiki/Sierpinski_arrowhead_curve#Processing
Processing 3.5
2020-09-02  Noel & GoToLoop 

The Sierpiński arrowhead curve is a fractal curve similar in appearance and identical in limit to the Sierpiński triangle.
https://en.wikipedia.org/wiki/Sierpi%C5%84ski_curve#Arrowhead_curve

Task:

Produce a graphical or ASCII-art representation of a Sierpinski arrowhead curve of at least order 3.
"""

# Online version at Trinket.io/processing/de6eddb155

t = { 'x': 20, 'y': 30, 'a': 60 }

def setup():
    size(450, 400)
    background(0, 0, 200)
    stroke(-1)
    sc(7, 400, -60)

def sc(o, l, a, s = t, X = 'x', Y = 'y', A = 'a', HALF = .5):
    if o:
        o -= 1
        l *= HALF
        sc(o, l, -a)[A] += a
        sc(o, l, a)[A] += a
        sc(o, l, -a)
    else:
        x, y = s[X], s[Y]
        s[X] += cos(radians(s[A])) * l
        s[Y] += sin(radians(s[A])) * l
        line(x, y, s[X], s[Y])

    return s
