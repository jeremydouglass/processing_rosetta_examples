/**
 * Sierpinski Carpet
 * http://www.rosettacode.org/wiki/Sierpinski_carpet#Processing
 * Processing 3.5
 * 2020-09 Emmanuel Pil
 * 
 * The Sierpiński carpet is a plane fractal first described by Wacław Sierpiński in 1916. The carpet
 * is one generalization of the Cantor set to two dimensions; another is the Cantor dust. 
 * https://en.wikipedia.org/wiki/Sierpi%C5%84ski_carpet
 * 
 * Task:
 *
 * Produce a graphical representation of a Sierpinski carpet of order N.
 */

float delta;

void setup() {
  size(729, 729);
  fill(0);
  background(255);
  noStroke();
  rect(width/3, height/3, width/3, width/3);
  rectangles(width/3, height/3, width/3);
}

void rectangles(int x, int y, int s) {
  if (s < 1) return;
  int xc = x-s;
  int yc = y-s;
  for (int row = 0; row < 3; row++) {
    for (int col = 0; col < 3; col++) {
      if (!(row == 1 && col == 1)) {
        int xx = xc+row*s;
        int yy = yc+col*s;
        delta = s/3;
        rect(xx+delta, yy+delta, delta, delta);
        rectangles(xx+s/3, yy+s/3, s/3);
      }
    }
  }
}
