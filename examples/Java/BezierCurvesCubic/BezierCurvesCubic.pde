/**
 * Bézier Curves Cubic
 * http://rosettacode.org/wiki/Bitmap/B%C3%A9zier_curves/Cubic#Processing
 * Processing 3.4
 * 2019-02-24 Noel
 *
 * Task:
 *
 * Using the data storage type for raster images and a draw_line function,
 * draw a cubic bezier curve.
 */

noFill();
bezier(85, 20, 10, 10, 90, 90, 15, 80);

/*
 bezier(x1, y1, x2, y2, x3, y3, x4, y4)
 Can also be drawn in 3D.
 bezier(x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, y4, z4)
*/
