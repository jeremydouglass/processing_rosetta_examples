/**
 * FractalTree -- Calculating coordinates
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

// Calculating the coordinates of each branch

void setup() {
  size(600, 600);
  background(0);
  stroke(255);
  drawTree(300, 550, -90, 9);
}
 
void drawTree(float x1, float y1, float angle, int depth) {
  float forkAngle = 20;
  float baseLen = 10.0;
  if (depth > 0) {
    float x2 = x1 + cos(radians(angle)) * depth * baseLen;
    float y2 = y1 + sin(radians(angle)) * depth * baseLen;
    line(x1, y1, x2, y2);
    drawTree(x2, y2, angle - forkAngle, depth - 1);
    drawTree(x2, y2, angle + forkAngle, depth - 1);
  }
}
