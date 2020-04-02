"""
Brownian Tree
https://rosettacode.org/wiki/Brownian_tree#Processing 
Processing 3.4
2020-03 Alexandre Villares

Task: 

Generate and draw a Brownian Tree.
   
A Brownian Tree is generated as a result of an initial seed,
followed by the interaction of two processes.

The initial "seed" is placed somewhere within the field.
Where is not particularly important it could be randomized,
or it could be a fixed point. Particles are injected into the
field, and are individually given a (typically random) motion
pattern. When a particle collides with the seed or tree, its
position is fixed, and it's considered to be part of the tree.
   
Because of the lax rules governing the random nature of the
particle's placement and motion, no two resulting trees are
really expected to be the same, or even necessarily have the
same general shape.
"""

SIDESTICK = False

def setup() :
    global is_taken
    size(512, 512)
    background(0)
    is_taken = [[False] * height for _ in range(width)]
    is_taken[width/2][height/2] = True


def draw() :
    x = floor(random(width))
    y = floor(random(height))
    if is_taken[x][y]: 
        return
    while True:
        xp = x + floor(random(-1, 2))
        yp = y + floor(random(-1, 2))
        is_contained = 0 <= xp < width and 0 <= yp < height
        if is_contained and not is_taken[xp][yp]:
            x = xp
            y = yp
            continue
        else:
            if SIDESTICK or (is_contained and is_taken[xp][yp]):
                is_taken[x][y] = True
                set(x, y, color(255))            
            break
        
    if frameCount > width * height:
        noLoop()
