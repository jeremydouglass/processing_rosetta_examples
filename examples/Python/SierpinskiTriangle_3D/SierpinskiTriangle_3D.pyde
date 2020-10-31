"""
SierpinskiTriangle -- 3D
http://rosettacode.org/wiki/Sierpinski_triangle/Graphical#Processing
Processing 3.5
2020-10 Alexandre Villares

The Sierpiński triangle (sometimes spelled Sierpinski), also called the Sierpiński gasket 
or Sierpiński sieve, is a fractal attractive fixed set with the overall shape of an equilateral
triangle, subdivided recursively into smaller equilateral triangles.  
https://en.wikipedia.org/wiki/Sierpi%C5%84ski_triangle

Task:

Produce a graphical representation of a Sierpinski triangle of order N in any orientation. 
"""

# Requires PeasyCam library you can install from the IDE
add_library('peasycam')

depth = 6
# recursion depth
dWidth = 600
dHeight = 600

pyramid_color = color(0)
bg_color = color(255)

# 3D Sierpinski tetrahedron vertices
verts = [PVector(0, 0, 0),
         PVector(300, 0, 0),
         PVector(150, 0, -260),
         PVector(150, -245, -86.6)
         ]
box_size = 600 / pow(3, depth)

# "random" start po(mid point)
start_pt = PVector(150, 183.7, 173.2)

def settings():
    size(dWidth, dHeight, P3D)

def setup():
    cam = PeasyCam(this, start_pt.x, start_pt.y, start_pt.z, 400)
    cam.setMaximumDistance(3000)
    fill(pyramid_color)
    stroke(pyramid_color)

def draw():
    background(bg_color)
    sierpinski(start_pt, depth)

def sierpinski(current_pt, current_depth):
    if current_depth == 0:
        pushMatrix()
        translate(current_pt.x, 245 + current_pt.y, 260 + current_pt.z)
        box(box_size)
        popMatrix()
        return

    for v in verts:
        sierpinski(PVector(
            (current_pt.x + v.x) / 2,
            (current_pt.y + v.y) / 2,
            (current_pt.z + v.z) / 2),
            current_depth - 1)
