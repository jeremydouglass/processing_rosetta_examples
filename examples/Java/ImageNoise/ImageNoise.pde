/**
 * ImageNoise
 * https://rosettacode.org/wiki/Image_noise#Processing
 * Processing 3.4
 * 2019-08 Jeremy Douglass
 * 
 * Task:
 * 
 * Generate a random black and white 320x240 image continuously, showing FPS
 * (frames per second).
 */

color black = color(0);
color white = color(255);

void setup() {
  size(320, 240);
  // frameRate(300); // 60 by default
}

void draw() {
  loadPixels();
  for (int i=0; i<pixels.length; i++) {
    if (random(1)<0.5) {
      pixels[i] = black;
    } else {
      pixels[i] = white;
    }
  }
  updatePixels();
  fill(0, 128);
  rect(0, 0, 60, 20);
  fill(255);
  text(frameRate, 5, 15);
}
