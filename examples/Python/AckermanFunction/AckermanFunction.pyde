"""
Ackermann function
https://rosettacode.org/wiki/Ackermann_function#Processing
Processing 3.4
2020-04 Alexandre Villares

The Ackermann function is a classic example of a recursive function, notable
especially because it is not a primitive recursive function. It grows very
quickly in value, as does the size of its call tree.

The Ackermann function is usually defined as follows:

         ( n+1                if m = 0
A(m,n) = ( A(m-1, 1)          if m > 0 and n = 0
         ( A(m-1, A(m, n-1))  if m > 0 and n > 0
Its arguments are never negative and it always terminates.

Task:

Write a function which returns the value of A(m,n).
Arbitrary precision is preferred (since the function grows so quickly),
but not required.
"""

# Python is not very adequate for deep recursion, so
# even setting sys.setrecursionlimit(1000000000) if
# m = 5 it throws 'maximum recursion depth exceeded'

from __future__ import print_function

def setup():
    for m in range(4):
        for n in range(7):
            print("{} ".format(ackermann(m, n)), end="")
        print()
    # print('finished')

def ackermann(m, n):
    if m == 0:
        return n + 1
    elif m > 0 and n == 0:
        return ackermann(m - 1, 1)
    else:
        return ackermann(m - 1, ackermann(m, n - 1))

"""
Output is the first 4x7 Ackermann's numbers.
    1 2 3 4 5 6 7
    2 3 4 5 6 7 8
    3 5 7 9 11 13 15
    5 13 29 61 125 253 509
"""
