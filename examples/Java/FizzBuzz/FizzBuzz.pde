/**
 * FizzBuzz: Console
 * https://rosettacode.org/wiki/FizzBuzz#Processing
 * Processing 3.4
 * 2019-12 Jeremy Douglass
 * 2015-12-09 Jsheradin "Console Only, Straightforward"
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

for (int i = 1; i <= 100; i++) {
  if (i % 3 == 0) {
    print("Fizz");
  }
  if (i % 5 == 0) {
    print("Buzz");
  }
  if (i % 3 != 0 && i % 5 != 0) {
    print(i);
  }
  print("\n");
}
