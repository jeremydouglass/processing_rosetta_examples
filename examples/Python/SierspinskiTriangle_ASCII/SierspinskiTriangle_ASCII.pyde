"""
SierpinskiTriangle -- ASCII
http://rosettacode.org/wiki/Sierpinski_triangle
Processing 3.5
2020-10 Alexandre Villares

The Sierpiński triangle (sometimes spelled Sierpinski), also called the Sierpiński gasket 
or Sierpiński sieve, is a fractal attractive fixed set with the overall shape of an equilateral
triangle, subdivided recursively into smaller equilateral triangles.  
https://en.wikipedia.org/wiki/Sierpi%C5%84ski_triangle

Task:

Produce an ASCII representation of a Sierpinski triangle of order N.
"""

def setup():
    print(sierpinski_triangle(3))

def sierpinski_triangle(n):
    if n == 0:
        return "*"

    s = sierpinski_triangle(n - 1)
    splits = [ns for ns in s.split("\n") if ns]
    len_s = len(splits)
    #  Top triangle
    ns = ""
    top = " " * (2 ** (n - 1))
    for i in range(len_s):
        ns += top
        ns += splits[i]
        ns += "\n"
    #  Two triangles side by side
    for i in range(len_s):
        ns += splits[i]
        ns += " " * (len_s - i)
        ns += splits[i]
        ns += "\n"

    return ns
