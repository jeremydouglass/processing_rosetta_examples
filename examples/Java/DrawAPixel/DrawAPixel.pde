/**
 * Draw a pixel
 * https://rosettacode.org/wiki/Draw_a_pixel#Processing
 * Processing 3.4
 * 2020-03, 2019-12 Jeremy Douglass
 * 2019-04-21 Israel77
 * 
 * Task:
 * 
 * Create a window and draw a pixel in it, subject to the following:
 * 1. the window is 320 x 240
 * 2. the color of the pixel must be red (255,0,0)
 * 3. the position of the pixel is x = 100, y = 100
 */

// A static-mode sketch setting one pixel on the canvas pixels array:

size(320, 240);
set(100, 100, color(255,0,0));


/**
 * The same sketch in active mode sketch is:
 * 
 *    void setup() {
 *      size(320, 240);
 *      set(100, 100, color(255,0,0));
 *    }
 */


/**
 * Or a pixel can be manipulated through loading and modifying the pixels array.
 * The formula to access a pixel is x + y * image width.
 * 
 *    void setup() {
 *      size(320, 240);
 *      loadPixels();
 *      pixels[width*100 + 100] = color(255,0,0);
 *      updatePixels();
 *    }
 */


/**
 * Processing can also draw a dot on the canvas using the `point()` command.
 * This will also draw a dot on the canvas...
 * 
 *    size(320, 240);
 *    stroke(color(255,0,0));
 *    point(100, 100);
 * 
 * ...however, whether a point corresponds to a single pixel on the screen
 * may depend on device-specific factors such as `pixelDensity()`,
 * render features such as 2D / 3D mode or `smooth()`, or style settings
 * such as `strokeWidth()` or `strokeCap()`.
 */
