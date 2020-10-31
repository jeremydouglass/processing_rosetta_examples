/**
 * SierpinskiTriangle -- 3D
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

// Requires PeasyCam library you can install from the IDE
import peasy.*; 

int depth   = 6;  // recursion depth
int dWidth  = 600;
int dHeight = 600;

color pyramidColor = color( 0 );
color bgColor      = color( 255 );

// 3D Sierpinski tetrahedron vertices
PVector [] coord = {
  new PVector(   0, 0, 0), 
  new PVector( 300, 0, 0), 
  new PVector( 150, 0, -260), 
  new PVector( 150, -245, -86.6)
};
int verts = coord.length;
float boxSize = 600/pow(3, depth);

// "random" start point (mid point)
PVector startPoint = new PVector(150, 183.7, 173.2);

PeasyCam cam;

void settings()
{
  size(dWidth, dHeight, P3D);
}

void setup()
{
  cam = new PeasyCam(this, startPoint.x, startPoint.y, startPoint.z, 400);
  cam.setMaximumDistance(3000);
  fill(pyramidColor);
  stroke(pyramidColor);
}

void draw()
{
  background(bgColor);
  sierpinski(startPoint, depth);
}

void sierpinski(PVector currentPoint, int currentDepth)
{
  if (currentDepth == 0) {
    pushMatrix();
    translate(currentPoint.x, 245+currentPoint.y, 260+currentPoint.z);
    box(boxSize);
    popMatrix();
    return;
  }
  for (int v=0; v<verts; v++) {
    sierpinski(new PVector((currentPoint.x+coord[v].x)/2, 
                           (currentPoint.y+coord[v].y)/2, 
                           (currentPoint.z+coord[v].z)/2), 
                            currentDepth-1);
  }
}
