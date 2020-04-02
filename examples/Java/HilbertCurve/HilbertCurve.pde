/**
 * Hilbert Curve
 * https://www.rosettacode.org/wiki/Hilbert_curve#Processing
 * Processing 3.4
 * 2020-03 Alexandre Villares
 * 
 * Task:
 * 
 * Produce a graphical or ASCII-art representation of a
 * Hilbert curve of at least order 3.
 * https://en.wikipedia.org/wiki/Hilbert_curve
 */

// L-System based implementation of Hilbert Curve

int  iterations = 7;
float strokeLen = 600;
int angleDeg = 90;
String axiom = "L";
StringDict rules = new StringDict();
String sentence = axiom;
int xo, yo;

void setup() {
  size(700, 700);
  xo= 50; 
  yo = height - 50;
  strokeWeight(1);
  noFill();
  
  rules.set("L", "+RF-LFL-FR+");
  rules.set("R", "-LF+RFR+FL-");
  
  generate(iterations);
}

void draw() {
  background(0);
  translate(xo, yo);
  plot(radians(angleDeg));
}

void generate(int n) {
  for (int i=0; i < n; i++) {
    strokeLen *= 0.5;
    String nextSentence = "";
    for (int j=0; j < sentence.length(); j++) {
      char c = sentence.charAt(j);
      String ruleResult = rules.get(str(c), str(c));
      nextSentence += ruleResult;
    }
    sentence = nextSentence;
  }
}

void plot(float angle) {
  for (int i=0; i < sentence.length(); i++) {
    char c = sentence.charAt(i);
    if (c == 'F') {
      stroke(255); 
      line(0, 0, 0, -strokeLen);
      translate(0, -strokeLen);
    } else if (c == '+') {
      rotate(angle);
    } else if (c == '-') {
      rotate(-angle);
    }
  }
}

void keyPressed() {
  if (key == '-') {
    angleDeg -= 1;
    println("Angle: " + angleDeg);
  }
  if (key == '=' || key == '+') {
    angleDeg += 1;
    println("Angle: " + angleDeg);
  }
  if (key == 'a') {
    strokeLen *= 2;
  }
  if (key == 'z') {
    strokeLen /= 2;
  }
  if (keyCode == LEFT) {
    xo -= 25;
  }
  if (keyCode == RIGHT) {
    xo += 25;
  }
  if (keyCode == UP) {
    yo -= 25;
  }
  if (keyCode == DOWN) {
    yo += 25;
  }
}
