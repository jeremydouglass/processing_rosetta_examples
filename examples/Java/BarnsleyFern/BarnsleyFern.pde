/**
 * Barnsley Fern
 * https://rosettacode.org/wiki/Barnsley_fern#Processing
 * Processing 3.4
 * 2016-05-03 Trizen
 * 
 * A Barnsley fern is a fractal named after British mathematician Michael
 * Barnsley and can be created using an iterated function system (IFS).
 * 
 * Task:
 *
 * Create this fractal fern, using the following transformations:
 * 
 * ƒ1   (chosen 1% of the time)
 *         xn + 1 = 0
 *         yn + 1 = 0.16 yn
 * ƒ2   (chosen 85% of the time)
 *         xn + 1 = 0.85 xn + 0.04 yn
 *         yn + 1 = −0.04 xn + 0.85 yn + 1.6
 * ƒ3   (chosen 7% of the time)
 *         xn + 1 = 0.2 xn − 0.26 yn
 *         yn + 1 = 0.23 xn + 0.22 yn + 1.6
 * ƒ4   (chosen 7% of the time)
 *         xn + 1 = −0.15 xn + 0.28 yn
 *         yn + 1 = 0.26 xn + 0.24 yn + 0.44.
 *
 * Starting position: x = 0, y = 0
 */
 
void setup() {
  size(640, 640);
  background(0, 0, 0);
}

float x = 0;
float y = 0;

void draw() {
  for (int i = 0; i < 100000; i++) {

    float xt = 0;
    float yt = 0;

    float r = random(100);

    if (r <= 1) {
      xt = 0;
      yt = 0.16*y;
    } else if (r <= 8) {
      xt = 0.20*x - 0.26*y;
      yt = 0.23*x + 0.22*y + 1.60;
    } else if (r <= 15) {
      xt = -0.15*x + 0.28*y;
      yt =  0.26*x + 0.24*y + 0.44;
    } else {
      xt =  0.85*x + 0.04*y;
      yt = -0.04*x + 0.85*y + 1.60;
    }

    x = xt;
    y = yt;

    int m = round(width/2 + 60*x);
    int n = height-round(60*y);

    set(m, n, #00ff00);
  }
  noLoop();
}
