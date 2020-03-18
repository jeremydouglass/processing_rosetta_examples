/**
 * NinetyNineBottles
 * https://rosettacode.org/wiki/99_Bottles_of_Beer#Processing
 * Processing 3.4
 * 2019-12-19 Jeremy Douglass
 * 2015-12-09 Jsheradin
 * 
 * Task:
 * 
 * Display the complete lyrics for the song:
 * 99 Bottles of Beer on the Wall.
 * 
 * The lyrics follow this form:
 * 
 *   99 bottles of beer on the wall
 *   99 bottles of beer
 *   Take one down, pass it around
 *   98 bottles of beer on the wall
 *   
 *   98 bottles of beer on the wall
 *   98 bottles of beer
 *   Take one down, pass it around
 *   97 bottles of beer on the wall
 *   
 * ... and so on, until reaching 0.
 * 
 * Grammatical support for "1 bottle of beer" is optional.
 * 
 * As with any puzzle, try to do it in as creative/concise/comical
 * a way as possible (simple, obvious solutions allowed, too).
 */

// immediately prints all output to the console

for (int i = 99; i > 0; i--) {
  print(i + " bottles of beer on the wall\n"
    + i + " bottles of beer\nTake one down, pass it around\n"
    + (i - 1) + " bottles of beer on the wall\n\n");
}
