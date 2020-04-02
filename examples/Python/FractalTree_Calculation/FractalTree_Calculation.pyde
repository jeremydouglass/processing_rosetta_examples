"""
FractalTree -- Calculating coordinates
https://rosettacode.org/wiki/Fractal_tree#Processing
Processing 3.4
2020-03-18 Alexandre Villares

Task:

Generate and draw a fractal tree.

1. Draw the trunk
2. At the end of the trunk, split by some angle and draw two branches
3. Repeat at the end of each branch until a sufficient level of branching is reached
"""
# Calculating the coordinates of each branch

def setup():
    size(600, 600)
    background(0)
    stroke(255)
    drawTree(300, 550, -90, 9)

def drawTree(x1, y1, angle, depth):
    fork_angle = 20
    base_len = 10.0
    if depth > 0:
        x2 = x1 + cos(radians(angle)) * depth * base_len
        y2 = y1 + sin(radians(angle)) * depth * base_len
        line(x1, y1, x2, y2)
        drawTree(x2, y2, angle - fork_angle, depth - 1)
        drawTree(x2, y2, angle + fork_angle, depth - 1)
