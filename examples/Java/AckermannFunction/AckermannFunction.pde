/**
 * Ackermann function
 * https://rosettacode.org/wiki/Ackermann_function#Processing
 * Processing 3.4
 * 2019-12 Jeremy Douglass
 * 2017-10-27 Edmund
 * 
 * The Ackermann function is a classic example of a recursive function, notable
 * especially because it is not a primitive recursive function. It grows very
 * quickly in value, as does the size of its call tree.
 * 
 * The Ackermann function is usually defined as follows:
 * 
 *          (  n+1                if m = 0
 * A(m,n) = (  A(m-1, 1)          if m > 0 and n = 0
 *          (  A(m-1, A(m, n-1))  if m > 0 and n > 0
 * Its arguments are never negative and it always terminates.
 * 
 * Task:
 * 
 * Write a function which returns the value of A(m,n).
 * Arbitrary precision is preferred (since the function grows so quickly),
 * but not required.
 */

void setup() {
  for (int m=0; m<4; m++) {
    for (int n=0; n<7; n++) {
      print(ackermann(m, n), " ");
    }
    println();
  }
}

int ackermann(int m, int n) {
  if (m == 0)
    return n + 1;
  else if (m > 0 && n == 0)
    return ackermann(m - 1, 1);
  else
    return ackermann( m - 1, ackermann(m, n - 1) );
}

/**
 * Output is the first 4x7 Ackermann's numbers.
 *   1 2 3 4 5 6 7
 *   2 3 4 5 6 7 8
 *   3 5 7 9 11 13 15
 *   5 13 29 61 125 253 509
 */
