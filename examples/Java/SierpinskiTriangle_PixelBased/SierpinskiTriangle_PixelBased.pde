/**
 * SierpinskiTriangle -- PixelBased
 * http://rosettacode.org/wiki/Sierpinski_triangle/Graphical#Processing
 * Processing 3.5
 * 
 * The Sierpiński triangle (sometimes spelled Sierpinski), also called the Sierpiński gasket 
 * or Sierpiński sieve, is a fractal attractive fixed set with the overall shape of an equilateral
 * triangle, subdivided recursively into smaller equilateral triangles.  
 * https://en.wikipedia.org/wiki/Sierpi%C5%84ski_triangle
 *
 * Task:
 * 
 * Produce a graphical representation of a Sierpinski triangle of order N in any orientation. 
 */
 
PVector [] coord = {new PVector(0, 0), new PVector(150, 300), new PVector(300, 0)};
 
void setup()
{
  size(400,400);
  background(32);  
  sierpinski(new PVector(150,150), 9);
  noLoop();
}
 
void sierpinski(PVector cPoint, int cDepth)
{
  if (cDepth == 0) {
    set(50+int(cPoint.x), (height-50)-int(cPoint.y), color(192));
    return;
  }
  for (int v=0; v<3; v++) {
    sierpinski(new PVector((cPoint.x+coord[v].x)/2, (cPoint.y+coord[v].y)/2), cDepth-1);
  }
}
