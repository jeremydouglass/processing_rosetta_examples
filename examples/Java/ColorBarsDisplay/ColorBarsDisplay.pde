/**
 * Color bars -- Display
 * http://rosettacode.org/wiki/Colour_bars/Display#Processing
 * Processing 3.4
 * 2020-04-17 Jeremy Douglass
 * 
 * Display a series of vertical color bars across the width of the display.
 * The color bars should either use:
 * -  the system palette, or
 * -  the sequence of colors:
 *    -  black
 *    -  red
 *    -  green
 *    -  magenta
 *    -  cyan
 *    -  yellow
 *    -  white
 */
 
fullScreen();
noStroke();
color[] cs = {
  color(0),         // black
  color(255,0,0),   // red
  color(0,255,0),   // green
  color(255,0,255), // magenta
  color(0,255,255), // cyan
  color(255,255,0), // yellow
  color(255)        // white
};
for(int i=0; i<7; i++) {
  fill(cs[i]);
  rect(i*width/8,0,width/8,height);
}
