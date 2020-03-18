/**
 * Bitmap
 * https://rosettacode.org/wiki/Bitmap#Processing
 * Processing 3.4
 * 2019-12-08 Noel
 * 
 * Task:
 * 
 * Show a basic storage type to handle a simple RGB raster graphics image,
 * and some primitive associated functions. If possible provide a function to
 * allocate an uninitialised image, given its width and height, and provide 3
 * additional functions:
 * -  one to fill an image with a plain RGB color,
 * -  one to set a given pixel with a color,
 * -- one to get the color of a pixel.
 * (If there are specificities about the storage or the allocation,
 * explain those.)
 */

PGraphics bitmap = createGraphics(100, 100);  // Create the bitmap
bitmap.beginDraw();
bitmap.background(255, 0, 0);  // Fill bitmap with red rgb color
bitmap.endDraw();
image(bitmap, 0, 0);  // Place bitmap on screen.
color b = color(0, 0, 255);  // Define a blue rgb color
set(50, 50, b);  // Set blue colored pixel in the middle of the screen
color c = get(50, 50);  // Get the color of same pixel
if (b == c) print("Color changed correctly");  // Verify
