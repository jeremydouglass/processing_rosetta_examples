"""
Skerpinsky Carpet
http://www.rosettacode.org/wiki/Sierpinski_carpet#Processing
Processing 3.5Processing 3.4
2020-10 Alexandre Villares

The Sierpiński carpet is a plane fractal first described by Wacław Sierpiński in 1916. The
carpet is one generalization of the Cantor set to two dimensions; another is the Cantor dust.
https://en.wikipedia.org/wiki/Sierpi%C5%84ski_carpet

Task:

Produce a graphical representation of a Sierpinski carpet of order N.
"""

def setup():
    size(729, 729)
    fill(0)
    background(255)
    noStroke()
    rect(width / 3, height / 3, width / 3, width / 3)
    rectangles(width / 3, height / 3, width / 3)
 
def rectangles(x, y, s):
    if s < 1: return
    xc, yc = x - s, y - s
    for row in range(3):
        for col in range(3):
            if not (row == 1 and col == 1):
                xx, yy = xc + row * s, yc + col * s
                delta = s / 3
                rect(xx + delta, yy + delta, delta, delta)
                rectangles(xx + s / 3, yy + s / 3, s / 3)
