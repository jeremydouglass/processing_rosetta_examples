/**
 * NinetyNineBottles, Visual with Animation
 * https://rosettacode.org/wiki/99_Bottles_of_Beer#Processing
 * Processing 3.4
 * 2019-12-19 Jeremy Douglass
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

// This approach uses Processing's draw loop to display text on the sketch
// canvas, with a global counter for bottles--draw() is called at the default
// 60fps, and acts as the for loop. One round of lyrics is displayed at a time,
// and the counter advances by checking Processing's built-in frameCount.
// Lyrics may also be advanced manually by clicking the mouse on the canvas. 

int i = 99;
void setup() {
  size(200, 140);
}
void draw() {
  background(0);
  text(i + " bottles of beer on the wall\n"
    + i + " bottles of beer\nTake one down, pass it around\n"
    + (i - 1) + " bottles of beer on the wall\n\n", 
    10, 20);
  if (frameCount%240==239) next();  // auto-advance every 4 secs
}
void mouseReleased() {
  next();  // manual advance
}
void next() {
  i = max(i-1, 1);  // stop decreasing at 1-0 bottles
}
