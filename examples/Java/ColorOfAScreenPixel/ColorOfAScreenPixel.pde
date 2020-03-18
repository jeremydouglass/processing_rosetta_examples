/**
 * ColorOfAScreenPixel
 * https://rosettacode.org/wiki/Color_of_a_screen_pixel#Processing
 * Processing 3.4
 * 2019-08 Jeremy Douglass
 * 
 * Task:
 * 
 * Get color information from an arbitrary pixel on the screen,
 * such as the current location of the mouse cursor.
 * The mouse cursor may or may not have to be active in a GUI
 * created by your program. These functions are OS related. 
 */

void setup() {
  // draw r/b color regions to detect with task
  fill(255, 0, 0);
  rect(0, 0, width/2, height);
  fill(0, 0, 255);
  rect(width/2, 0, width, height);
}

void draw() {
  // Method 1:
  color c = get(mouseX, mouseY);
  println(c, red(c), green(c), blue(c));

  // Method 2:
  // for higher performance e.g. when looping over many pixels,
  // use faster array lookup to retrieve value...
  loadPixels();
  color p = pixels[mouseY * width + mouseX];
  // ...and use faster bit shifting to extract color components.
  println(p, p >> 16 & 0xFF, p >> 8 & 0xFF, p >> 8 & 0xFF);
}
