/**
 * Vector
 * https://rosettacode.org/wiki/Vector#Processing
 * Processing 3.4
 * 2019-12-19 Jeremy Douglass
 *
 * Task:
 *
 * Implement a Vector class (or a set of functions) that models a Physical
 * Vector. The four basic operations and a pretty print function should be
 * implemented.
 *
 * The Vector may be initialized in any reasonable way.
 *
 * -  Start and end points, and direction
 * -  Angular coefficient and value (length)
 *
 * The four operations to be implemented are:
 *
 * Vector + Vector addition
 * Vector - Vector subtraction
 * Vector * scalar multiplication
 * Vector / scalar division
 */

// A vector class, PVector, is a Processing built-in. It expresses an x,y
// or x,y,z vector from the origin. A vector may return its components,
// magnitude, and heading, and also includes .add(), .sub(), .mult(), and
// .div() -- among other methods. Methods each have both a static form
// which returns a new PVector and an object method form which alters the
// original.

PVector v1 = new PVector(5, 7);
PVector v2 = new PVector(2, 3);

println(v1.x, v1.y, v1.mag(), v1.heading(), '\n');

// static methods
println(PVector.add(v1, v2));
println(PVector.sub(v1, v2));
println(PVector.mult(v1, 11));
println(PVector.div(v1, 2), '\n');

// object methods
println(v1.sub(v1));
println(v1.add(v2));
println(v1.mult(10));
println(v1.div(10));

/**
 * Output:
 *
 * 5.0 7.0 8.602325 0.95054686
 *
 * [ 7.0, 10.0, 0.0 ]
 * [ 3.0, 4.0, 0.0 ]
 * [ 55.0, 77.0, 0.0 ]
 * [ 2.5, 3.5, 0.0 ]
 *
 * [ 0.0, 0.0, 0.0 ]
 * [ 2.0, 3.0, 0.0 ]
 * [ 20.0, 30.0, 0.0 ]
 * [ 2.0, 3.0, 0.0 ]
 */
