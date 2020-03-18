/**
 * RepeatAString
 * https://rosettacode.org/wiki/Repeat_a_string#Processing
 * Processing 3.4
 * 2019-08 Jeremy Douglass
 * 
 * Task:
 * 
 * Take a string and repeat it some number of times.
 * 
 * Example: repeat("ha", 5) => "hahahahaha"
 * If there is a simpler/more efficient way to repeat a single “character”
 * (i.e. creating a string filled with a certain character),
 * you might want to show that as well (i.e. repeat-char("*", 5) => "*****").
 */

void setup() {
  String rep = repeat("ha", 5);
  println(rep);
}
String repeat(String str, int times) {
  // make an array of n chars,
  // replace each char with str,
  // and return as a new String
  return new String(new char[times]).replace("\0", str);
}
