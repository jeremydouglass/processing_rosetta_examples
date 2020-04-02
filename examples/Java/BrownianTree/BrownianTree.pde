/**
 * Brownian Tree
 * https://rosettacode.org/wiki/Brownian_tree#Processing 
 * Processing 3.4
 * 2016-06 Trizen 
 * 2020-03 Alexandre Villares
 * 
 * Task: 
 * 
 * Generate and draw a Brownian Tree.
 *  
 * A Brownian Tree is generated as a result of an initial seed,
 * followed by the interaction of two processes.
 *
 * The initial "seed" is placed somewhere within the field. Where is not particularly important;
 * it could be randomized, or it could be a fixed point.
 * Particles are injected into the field, and are individually given a (typically random) motion
 * pattern. When a particle collides with the seed or tree, its position is fixed, and it's
 * considered to be part of the tree.
 *  
 * Because of the lax rules governing the random nature of the particle's placement and motion,
 * no two resulting trees are really expected to be the same, or even necessarily have the same
 * general shape.
 */

boolean SIDESTICK = false;
boolean[][] isTaken;

void setup() {
  size(512, 512);
  background(0);
  isTaken = new boolean[width][height];
  isTaken[width/2][height/2] = true;
}

void draw() {
  int x = floor(random(width));
  int y = floor(random(height));
  if (isTaken[x][y]) { 
    return;
  }
  while (true) {
    int xp = x + floor(random(-1, 2));
    int yp = y + floor(random(-1, 2));
    boolean iscontained = (
      0 <= xp && xp < width  && 
      0 <= yp && yp < height
      );
    if (iscontained && !isTaken[xp][yp]) {
      x = xp;
      y = yp;
      continue;
    } else {
      if (SIDESTICK || (iscontained && isTaken[xp][yp])) {
        isTaken[x][y] = true;
        set(x, y, #FFFFFF);
      }
      break;
    }
  }
  if (frameCount > width * height) { 
    noLoop();
  }
}
