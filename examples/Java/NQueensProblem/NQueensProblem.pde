/**
 * N-queens problem
 * http://rosettacode.org/wiki/N-queens_problem#Processing
 * Processing 3.5
 *
 * The eight queens puzzle is the problem of placing eight
 * chess queens on an 8×8 chessboard so that no two queens
 * threaten each other.
 * https://en.wikipedia.org/wiki/Eight_queens_puzzle
 * 
 * Task: 
 *    
 * Solve the eight queens puzzle. You can extend the problem
 * to solve the puzzle with N queens on a board of size NxN.
 */

int n = 8;
int[] b = new int[n];
int s = 0;
int y = 0;

void setup() {
  size(400, 400);
  textAlign(CENTER, CENTER);
  textFont(createFont("DejaVu Sans", 44));
  b[0] = -1;
}

void draw() {
  if (y >= 0) {
    do {
      b[y]++;
    } while ((b[y] < n) && unsafe(y));
    if (b[y] < n) {
      if (y < (n-1)) {
        b[++y] = -1;
      } else {
        putboard();
      }
    } else {
      y--;
    }
  } else { 
    textSize(18);
    text("Press any key to restart", width / 2, height - 20);
  }
} 


boolean unsafe(int y) {
  int x = b[y];
  for (int i = 1; i <= y; i++) {
    int t = b[y - i];
    if (t == x ||
      t == x - i ||
      t == x + i) {
      return true;
    }
  }
  return false;
}

void putboard() {
  float w = width / n;
  for (int y = 0; y < n; y++) {
    for (int x = 0; x < n; x++) {
      fill(255 * ((x + y) % 2));
      square(x * w, y * w, w);
      if (b[y] == x) {
        fill(255 - 255 * ((x + y) % 2));
        textSize(42);
        text("♕", w / 2 +  x *w, w /2 + y * w);
      }
    }
  }
  fill(255, 0, 0);
  textSize(18);
  text("Solution " + (++s), width / 2, height / 90);
}

void keyPressed() {
  b = new int[n];
  s = 0;
  y = 0;
  b[0] = -1;
}
