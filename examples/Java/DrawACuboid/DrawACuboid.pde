/**
 * Draw a cuboid
 * https://rosettacode.org/wiki/Draw_a_cuboid#Processing
 * Processing 3.4
 * 2019-12-19 Jeremy Douglass
 *
 * Task:
 *
 * Draw a cuboid with relative dimensions of 2 × 3 × 4.
 *
 * The cuboid can be represented graphically, or in ASCII art, depending on the
 * language capabilities.
 * To fulfill the criteria of being a cuboid, three faces must be visible.
 *
 * Either static or rotational projection is acceptable for this task.
 */

// A cuboid in Processing is created with box(). It may be styled with stroke,
// fill, and lighting.

size(500, 500, P3D);
background(0);
// position
translate(width/2, height/2, -width/2);
rotateZ(radians(15));
rotateY(radians(-30));
rotateX(radians(-25));
// optional fill and lighting colors
noStroke();
fill(192, 255, 192);
pointLight(255, 255, 255, 400, -400, 400);
// draw cuboid
box(200, 300, 400);
