/**
 * Archimedean Spiral -- Points Rotated PVector
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

// Rotates a PVector object of increasing magnitude and draws its point rather
// than computing rotated coordinates with sin()/cos().
// 
// When drawn with points the rotation must be very small, and initially the
// animation is very slow. This is because the points will move further and
// further apart as the radius increases.

PVector pv;
float rotation;

void setup() {
  size(300, 300);
  rotation = 0.1;
  pv = new PVector(rotation, 0);
  background(255);
}

void draw() {
  translate(width/2.0, height/2.0);
  pv.setMag(pv.mag()+rotation);
  println(pv.mag());
  pv.rotate(rotation/PI);
  point(pv.x, pv.y);
  // check restart
  if (pv.mag()>width/2.0) frameCount=-1;
}
