/**
 * Koch Curve
 * https://www.rosettacode.org/wiki/Koch_curve#Processing
 * Processing 3.4
 * 2020-02-26 Noel
 * 2020-03-03 Jeremy Douglass
 * 
 * Task:
 * 
 * Draw a Koch curve. See details: https://en.wikipedia.org/wiki/Koch_snowflake
 */

int l = 300;

void setup() {
  size(400, 400);
  background(0, 0, 255);
  stroke(255);
  // draw from center of screen
  translate(width/2.0, height/2.0);
  // center curve from lower-left corner of base equilateral triangle
  translate(-l/2.0, l*sqrt(3)/6.0);
  for (int i = 1; i <= 3; i++) {
    kcurve(0, l);
    rotate(radians(120));
    translate(-l, 0);
  }
}

void kcurve(float x1, float x2) {
  float s = (x2-x1)/3;
  if (s < 5) {
    pushMatrix();
    translate(x1, 0);
    line(0, 0, s, 0);
    line(2*s, 0, 3*s, 0);
    translate(s, 0);
    rotate(radians(60));
    line(0, 0, s, 0);
    translate(s, 0);
    rotate(radians(-120));
    line(0, 0, s, 0);
    popMatrix();
    return;
  }
  pushMatrix();
  translate(x1, 0);
  kcurve(0, s);
  kcurve(2*s, 3*s);
  translate(s, 0);
  rotate(radians(60));
  kcurve(0, s);
  translate(s, 0);
  rotate(radians(-120));
  kcurve(0, s);
  popMatrix();
}
