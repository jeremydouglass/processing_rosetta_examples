/**
 * FractalTree -- Using rotation
 * https://rosettacode.org/wiki/Fractal_tree#Processing
 * Processing 3.4
 * 2020-03-18 Alexandre Villares
 * 
 * Task:
 * 
 * Generate and draw a fractal tree.
 * 
 * 1. Draw the trunk
 * 2. At the end of the trunk, split by some angle and draw two branches
 * 3. Repeat at the end of each branch until a sufficient level of branching is reached
 */

// Using Processing's pushMatrix(), popMatrix() and rotate()

void setup() {
  size(600, 600);
  background(0);
  stroke(255);
  drawTree(300, 550, 9);
}

void drawTree(float x, float y, int depth) {
  float forkAngle = radians(20);
  float baseLen = 10.0;
  if (depth > 0) {
    pushMatrix();
    translate(x, y - baseLen * depth);
    line(0, baseLen * depth, 0, 0);  
    rotate(forkAngle);
    drawTree(0, 0, depth - 1);  
    rotate(2 * -forkAngle);
    drawTree(0, 0, depth - 1); 
    popMatrix();
  }
}
