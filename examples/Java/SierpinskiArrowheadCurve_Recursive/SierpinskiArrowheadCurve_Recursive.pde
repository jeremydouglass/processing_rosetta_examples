/**
 * SierpinskiArrowheadCurve -- Recursive
 * http://rosettacode.org/wiki/Sierpinski_arrowhead_curve#Processing
 * Processing 3.5
 * 2020-09-02  Noel & GoToLoop 
 * 
 * The Sierpiński arrowhead curve is a fractal curve similar in appearance and identical in limit to the Sierpiński triangle.
 * https://en.wikipedia.org/wiki/Sierpi%C5%84ski_curve#Arrowhead_curve
 * 
 * Task:
 * 
 * Produce a graphical or ASCII-art representation of a Sierpinski arrowhead curve of at least order 3.
 */

// Online version at https://www.openprocessing.org/sketch/954181

PVector t = new PVector(20, 30, 60);

void setup() {
  size(450, 400);
  noLoop();
  background(0, 0, 200);
  stroke(-1);  // same as stroke(255);
  sc(7, 400, -60, t);
}

PVector sc(int o, float l, int a, PVector s) {
  if (o > 0) {
    sc(--o, l *= .5, -a, s).z += a;
    sc(o, l, a, s).z += a;
    sc(o, l, -a, s);
  } else {
    line(s.x, s.y, 
      s.x += cos(radians(s.z)) * l, 
      s.y += sin(radians(s.z)) * l);
  }
  return s;
}
