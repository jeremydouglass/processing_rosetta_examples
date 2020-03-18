/**
 * Draw a sphere
 * https://rosettacode.org/wiki/Draw_a_sphere#Processing
 * Processing 3.4
 * 2019-12-19 Jeremy Douglass
 * 2013-08-16 Atkindel
 *
 * Task:
 *
 * Draw a sphere.
 *
 * The sphere can be represented graphically, or in ASCII art,
 * depending on the language capabilities.
 *
 * Either static or rotational projection is acceptable for this task.
 */

// 3D rendering is built into Processing.

void setup() {
  size(500, 500, P3D);
}
void draw() {
  background(192);
  translate(width/2, height/2);
  // optional color and lighting style
  stroke(200);
  fill(255);
  lights();
  // draw sphere
  sphere(200);
}
