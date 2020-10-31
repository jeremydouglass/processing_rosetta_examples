/**
 * SierpinskiTriangle -- Turtle inspired
 * http://rosettacode.org/wiki/Sierpinski_triangle/Graphical#Processing
 * Processing 3.5
 * 2020-10 Alexandre Villares 
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
 
void setup(){
    size(600, 600);
    translate(525, 25);
    sier(8, 550);
}

void sier(int n, float side){
    if (n == 0){
        return;
    }
    for (int i = 0; i < 3; i++){
        sier(n - 1, side / 2.0);
        line(0, 0, 0, side);
        translate(0, side);
        rotate(radians(120));
    }
}
