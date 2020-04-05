"""
Vector
https:#rosettacode.org/wiki/Vector#Processing
Processing 3.4
2020-04 Alexandre Villares

Task:

Implement a Vector class (or a set of functions) that models a Physical
Vector. The four basic operations and a pretty print function should be
implemented.

The Vector may be initialized in any reasonable way.

-  Start and end points, and direction
-  Angular coefficient and value (length)
 
The four operations to be implemented are:
 
Vector + Vector addition
Vector - Vector subtraction
Vectorscalar multiplication
Vector / scalar division
"""

# A vector class, PVector, is a Processing built-in. It expresses an x,y
# or x,y,z vector from the origin. A vector may return its components,
# magnitude, and heading, and also includes .add(), .sub(), .mult(), and
# .div() -- among other methods. Methods each have both a static form
# which returns a PVector and an object method form which alters the
# original. Python mode adds math operator overloading for static methods.

v1 = PVector(5, 7)
v2 = PVector(2, 3)

println('{} {} {} {}\n'.format( v1.x, v1.y, v1.mag(), v1.heading()))

# math overloaded operators (static methods in the comments)
println(v1 + v2) # PVector.add(v1, v2)
println(v1 - v2) # PVector.sub(v1, v2)
println(v1 * 11) # PVector.mult(v1, 11)
println(v1 / 2)  # PVector.div(v1, 2)
println('')

# object methods (related augmented assigment in the comments)
println(v1.sub(v1))  # v1 -= v1; println(v1)
println(v1.add(v2))  # v1 += v2; println(v2)
println(v1.mult(10)) # v1 *= 10; println(v1)
println(v1.div(10))  # v1 /= 10; println(v1)


"""
Output:

5.0 7.0 8.602325 0.95054686

[ 7.0, 10.0, 0.0 ]
[ 3.0, 4.0, 0.0 ]
[ 55.0, 77.0, 0.0 ]
[ 2.5, 3.5, 0.0 ]

[ 0.0, 0.0, 0.0 ]
[ 2.0, 3.0, 0.0 ]
[ 20.0, 30.0, 0.0 ]
[ 2.0, 3.0, 0.0 ]
"""
