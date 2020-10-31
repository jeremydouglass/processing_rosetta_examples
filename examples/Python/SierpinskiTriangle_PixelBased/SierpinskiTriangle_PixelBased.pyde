"""
SierpinskiTriangle -- PixelBased
http://rosettacode.org/wiki/Sierpinski_triangle/Graphical#Processing
Processing 3.5

The Sierpiński triangle (sometimes spelled Sierpinski), also called the Sierpiński gasket 
or Sierpiński sieve, is a fractal attractive fixed set with the overall shape of an equilateral
triangle, subdivided recursively into smaller equilateral triangles.  
https://en.wikipedia.org/wiki/Sierpi%C5%84ski_triangle

Task:

Produce a graphical representation of a Sierpinski triangle of order N in any orientation. 
"""

verts = [PVector(0, 0), PVector(150, 300), PVector(300, 0)]

def setup():
    size(400, 400)
    background(32)
    sierpinski(PVector(150, 150), 9)
    noLoop()

def sierpinski(current_pt, current_depth):
    if current_depth == 0:
        set(50 + int(current_pt.x), (height - 50) - int(current_pt.y), color(192))
        return

    for v in verts:
        new_pt = PVector((current_pt.x + v.x) / 2, (current_pt.y + v.y) / 2)
        sierpinski(new_pt, current_depth - 1)
