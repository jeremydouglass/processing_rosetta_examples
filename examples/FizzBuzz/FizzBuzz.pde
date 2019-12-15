/**
 * FizzBuzz: Console
 * 2019-12 Jeremy Douglass Processing 3.4
 * https://rosettacode.org/wiki/FizzBuzz#Processing
 *
 * 2014-01-09 Phospheros "Visualization & Console, Straightforward"
 * 2014-01-09 Phospheros "Visualization & Console, Ternary"
 * 2015-12-09 Jsheradin "Console Only, Straightforward"
 * 2018-12-06 Wester Iii "Console Only, Futureproof"
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
