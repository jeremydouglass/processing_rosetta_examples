/**
 * Archimedean Spiral -- Line Segments
 * https://rosettacode.org/wiki/Archimedean_spiral#Processing
 * Processing 3.4
 * 2019-12-19 Jeremy Douglass
 * 
 * The Archimedean spiral is a spiral named after the Greek mathematician
 * Archimedes. An Archimedean spiral can be described by the equation:
 * 
 *   r = a + bθ
 * 
 * with real numbers a and b.
 * 
 * Task:
 * 
 * Draw an Archimedean spiral. 
 */

// Draw each new line segments anchored to the previous point in order to keep
// the spiral visually connected no matter how much the radius expands.

float px, py, x, y;
float theta;
float rotation;

void setup() {
  size(300, 300);
  px = py = x = y = theta = 0;
  rotation = 0.1;
  background(255);
}

void draw() {
  translate(width/2.0, height/2.0);
  x = theta*cos(theta/PI); 
  y = (theta)*sin(theta/PI);
  line(x, y, px, py);
  theta = theta + rotation;
  px = x;
  py = y;
  // check restart
  if (px>width/2.0) frameCount=-1;
}
