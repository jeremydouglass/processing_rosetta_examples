/**
 * Animation
 * https://rosettacode.org/wiki/Animation#Processing
 * Processing 3.4
 * 2019-08 Jeremy Douglass
 * 
 * Task:
 * 
 * Create a window containing the string "Hello World! " (the trailing space
 * is significant). Make the text appear to be rotating right by periodically
 * removing one letter from the end of the string and attaching it to the front.
 * When the user clicks on the (windowed) text, it should reverse its direction.
 */

String txt = "Hello, world! ";
boolean dir = true;

void draw() {
  background(128);
  text(txt, 10, height/2);
  if (frameCount%10==0) {
    if (dir) {
      txt = rotate(txt, 1);
    } else {
      txt = rotate(txt, txt.length()-1);
    }
    println(txt);
  }
}

void mouseReleased() {
  dir = !dir;
}

String rotate(String text, int startIdx) {
  char[] rotated = new char[text.length()];
  for (int i = 0; i < text.length(); i++) {
    rotated[i] = text.charAt((i + startIdx) % text.length());
  }
  return String.valueOf(rotated);
}
