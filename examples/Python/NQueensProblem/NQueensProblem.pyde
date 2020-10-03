"""
N-queens problem
http://rosettacode.org/wiki/N-queens_problem#Processing
Processing 3.5

The eight queens puzzle is the problem of placing eight
chess queens on an 8×8 chessboard so that no two queens
threaten each other.
https://en.wikipedia.org/wiki/Eight_queens_puzzle

Task: 
    
Solve the eight queens puzzle. You can extend the problem
to solve the puzzle with N queens on a board of size NxN.
"""

# This solution, originally by Raymond Hettinger for demonstrating the power
# of the itertools module, generates all solutions.

from itertools import permutations, product

n = 8
cols = range(n)
i = 0  # solution shown

solutions = [vec for vec in permutations(cols)
             if n == len(set(vec[i] + i for i in cols))
             == len(set(vec[i] - i for i in cols))]

def setup():
    size(400, 400)
    textAlign(CENTER, CENTER)
    textFont(createFont("DejaVu Sans", 44))

def draw():
    background(0)
    w = width / n
    for x, y in product(range(n), range(n)):
        fill(255 * ((x + y) % 2))
        square(x * w, y * w, w)
        if solutions[i][y] == x:
            fill(255 - 255 * ((x + y) % 2))
            text(u'♕', w / 2 + x * w, w / 3 + y * w)

def keyPressed():
    global i
    i = (i + 1) % len(solutions)
