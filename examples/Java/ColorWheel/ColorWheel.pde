/**
 * Color Wheel
 * https://rosettacode.org/wiki/Color_wheel#Processing
 * Processing 3.4
 * 2020-03 Alexandre Villares
 * 
 * Task:
 * 
 * Write a function to draw a HSV color wheel completely with code.
 * https://en.wikipedia.org/wiki/HSL_and_HSV
 *
 * This is strictly for learning purposes only. It's highly recommended that
 * you use an image in an actual application to actually draw the color wheel
 * (as procedurally drawing is super slow). This does help you understand
 * how color wheels work and this can easily be used to determine a color
 * value based on a position within a circle. 
 */
 
size(300, 300);
background(0);
float radius = min(width, height) / 2.0;
float cx = width / 2;
float cy = width / 2;
for (int x = 0; x < width; x++) {
  for (int y = 0; y < width; y++) {
    float rx = x - cx;
    float ry = y - cy;
    float s = sqrt(sq(rx) + sq(ry)) / radius;
    if (s <= 1.0) {
      float h = ((atan2(ry, rx) / PI) + 1.0) / 2.0;
      colorMode(HSB);
      color c = color(int(h * 255), int(s * 255), 255);
      set(x, y, c);
    }
  }
}
