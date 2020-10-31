/**
 * SierpinskiTriangle -- ASCII
 * http://rosettacode.org/wiki/Sierpinski_triangle
 * Processing 3.5
 * 
 * The Sierpiński triangle (sometimes spelled Sierpinski), also called the Sierpiński gasket 
 * or Sierpiński sieve, is a fractal attractive fixed set with the overall shape of an equilateral
 * triangle, subdivided recursively into smaller equilateral triangles.  
 * https://en.wikipedia.org/wiki/Sierpi%C5%84ski_triangle
 *
 * Task:
 * 
 * Produce an ASCII representation of a Sierpinski triangle of order N.  
 */

void setup() {
  print(getSierpinskiTriangle(3));
}
String getSierpinskiTriangle(int n) {
  if ( n == 0 ) {
    return "*";
  }
  String s = getSierpinskiTriangle(n-1);
  String [] split = s.split("\n");
  int length = split.length;
  //  Top triangle
  String ns = "";
  String top = buildSpace((int)pow(2, n-1));
  for ( int i = 0; i < length; i++ ) {
    ns += top;
    ns += split[i];
    ns += "\n";
  }
  //  Two triangles side by side
  for ( int i = 0; i < length; i++ ) {
    ns += split[i];
    ns += buildSpace(length-i);
    ns += split[i];
    ns += "\n";
  }
  return ns;
}

String buildSpace(int n) {
  String ns = "";
  while ( n > 0 ) {
    ns += " ";
    n--;
  }
  return ns;
}
