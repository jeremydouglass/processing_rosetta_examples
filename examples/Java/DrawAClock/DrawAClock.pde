
/**
 * Draw a clock
 * https://rosettacode.org/wiki/Draw_a_clock#Processing
 * Processing 3.4
 * 2019-12-19 Jeremy Douglass
 *
 * Task:
 *
 * Draw a clock.
 *
 * More specific:
 *
 * Draw a time keeping device. It can be a stopwatch, hourglass, sundial, a
 * mouth counting "one thousand and one", anything. Only showing the seconds is
 * required, e.g.: a watch with just a second hand will suffice. However, it
 * must clearly change every second, and the change must cycle every so often
 * (one minute, 30 seconds, etc.) It must be drawn; printing a string of
 * numbers to your terminal doesn't qualify. Both text-based and graphical
 * drawing are OK.
 *
 * The clock is unlikely to be used to control space flights, so it needs not
 * be hyper-accurate, but it should be usable, meaning if one can read the
 * seconds off the clock, it must agree with the system clock.
 * A clock is rarely (never?) a major application: don't be a CPU hog and poll
 * the system timer every microsecond, use a proper timer/signal/event from your
 * system or language instead. For a bad example, many OpenGL programs update
 * the frame-buffer in a busy loop even if no redraw is needed, which is very
 * undesirable for this task.
 *
 * A clock is rarely (never?) a major application: try to keep your code simple
 * and to the point. Don't write something too elaborate or convoluted, instead
 * do whatever is natural, concise and clear in your language.
 *
 * Key points
 * -  animate simple object
 * -  timed event
 * -  polling system resources
 * -  code clarity
 */

// This simple example of an analog wall clock uses the Processing built-in
// time functions second(), minute(), and hour(). For each hand it rotates the
// sketch canvas and then draws a straight line.

void draw() {
  drawClock();
}
void drawClock() {
  background(192);
  translate(width/2, height/2);
  float s = second() * TWO_PI / 60.0;
  float m = minute() * TWO_PI / 60.0;
  float h = hour() * TWO_PI / 12.0;
  rotate(s);
  strokeWeight(1);
  line(0, 0, 0, -width*0.5);
  rotate(-s+m);
  strokeWeight(2);
  line(0, 0, 0, -width*0.4);
  rotate(-m+h);
  strokeWeight(4);
  line(0, 0, 0, -width*0.2);
}

// The sketch redraws at Processing's default 60fps. To redraw the screen only
// when the second hand changes, add a global variable and change draw() as
// follows:
//
//   int lastSec = second();
//   void draw() {
//     if (lastSec!=second()) {
//       drawClock();
//     lastSec=second();
//     }
//   }
//
// One of the official Processing language examples is a more graphically
// detailed Clock example: https://processing.org/examples/clock.html
