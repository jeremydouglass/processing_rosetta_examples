"""
FractalTree -- Using rotation
https://rosettacode.org/wiki/Fractal_tree#Processing
Processing 3.4
2020-03-18 Alexandre Villares

Task:

Generate and draw a fractal tree.

1. Draw the trunk
2. At the end of the trunk, split by some angle and draw two branches
3. Repeat at the end of each branch until a sufficient level of branching is reached
"""

# Using Processing's pushMatrix(), popMatrix() and rotate()
 
def setup():
    size(600, 600)
    background(0)
    stroke(255)
    drawTree(300, 550, 9)
    
def drawTree(x, y, depth):
    fork_ang = radians(20)
    base_len = 10
    if depth > 0:
        pushMatrix()
        translate(x, y - baseLen * depth)
        line(0, baseLen * depth, 0, 0)  
        rotate(fork_ang)
        drawTree(0, 0, depth - 1)  
        rotate(2 * -fork_ang)
        drawTree(0, 0, depth - 1) 
        popMatrix()
