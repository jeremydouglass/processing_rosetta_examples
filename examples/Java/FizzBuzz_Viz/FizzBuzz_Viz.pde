/**
 * FizzBuzz: Console and Visualization
 * https://rosettacode.org/wiki/FizzBuzz#Processing
 * Processing 3.4
 * 2019-12 Jeremy Douglass
 * 
 * 2014-01-09 Phospheros "Visualization & Console, Straightforward"
 * 
 * Task:
 * 
 * Write a program that prints the integers from 1 to 100 (inclusive).
 * But:
 * -  for multiples of three, print   Fizz (instead of the number)
 * -  for multiples of five,  print   Buzz (instead of the number)
 * -  for multiples of both three and five, print FizzBuzz (instead of the number)
 * The FizzBuzz problem was presented as the lowest level of comprehension required'
 * to illustrate adequacy.
 */

// Reserved variable "width" in Processing is 100 pixels by default,
// suitable for this FizzBuzz exercise.
// Accordingly, range is pixel index from 0 to 99.

for (int i = 0; i < width; i++) {
  if (i % 3 == 0 && i % 5 == 0) {
    stroke(255, 255, 0);
    println("FizzBuzz!");
  } else if (i % 5 == 0) {
    stroke(0, 255, 0);
    println("Buzz");
  } else if (i % 3 == 0) {
    stroke(255, 0, 0);
    println("Fizz");
  } else {
    stroke(0, 0, 255);
    println(i);
  } 
  line(i, 0, i, height);
}
