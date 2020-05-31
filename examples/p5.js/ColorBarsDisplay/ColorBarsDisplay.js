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
let cs = [];
function setup() {
  createCanvas(windowWidth, windowHeight);
  noStroke();
  cs = [
    color(0),           // black
    color(255, 0, 0),   // red
    color(0, 255, 0),   // green
    color(0, 0, 255),   // blue
    color(255, 0, 255), // magenta
    color(0, 255, 255), // cyan
    color(255, 255, 0), // yellow
    color(255),         // white
  ];
}

function draw() {
  background(255,0,0);
  for (i=0; i<cs.length; i++) {
    fill(cs[i]);
    rect(i*width/cs.length, 0, width/cs.length, height);
  }
}
