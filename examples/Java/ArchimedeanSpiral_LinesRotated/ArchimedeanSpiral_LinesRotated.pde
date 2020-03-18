/**
 * Archimedean Spiral -- Lines Rotated
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

// Uses the built-in rotate() and screenX() to rotate the frame of reference
// and then recover the rotated screen position of each next point.
//
// Draw each new line segments anchored to the previous point in order to keep
// the spiral visaully connected no matter how much the radius expands.

float x, y, px, py;
float theta;
float rotation;

void setup() {
  size(300, 300);
  x = y = px = py = theta = 0;
  rotation = 0.1;
  background(255);
}

void draw() {
  // find coordinates with rotating reference frame
  pushMatrix();  
  rotate(theta/PI);
  x = screenX(theta, 0);
  y = screenY(theta, 0);
  popMatrix();

  translate(width/2.0, height/2.0);
  theta += rotation;
  line(px, py, x, y);
  px = x;
  py = y;
  if (theta>width/2.0) frameCount=-1; // start over
}
