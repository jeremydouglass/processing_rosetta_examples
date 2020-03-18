/**
 * Draw a pixel
 * https://rosettacode.org/wiki/Draw_a_pixel#Processing
 * Processing 3.4
 * 2019-12 Jeremy Douglass
 * 2019-04-21 Israel77
 * 
 * Task:
 * 
 * Create a window and draw a pixel in it, subject to the following:
 * 1. the window is 320 x 240
 * 2. the color of the pixel must be red (255,0,0)
 * 3. the position of the pixel is x = 100, y = 100
 */

void setup()
{
  size(320, 240);
  background(255);
  stroke(255, 0, 0);
  point(100, 100);
}
