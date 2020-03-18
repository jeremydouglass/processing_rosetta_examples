/**
 * Bulls and Cows
 * https://rosettacode.org/wiki/Bulls_and_cows#Processing
 * Processing 3.4
 * 2019-08 Jeremy Douglass
 * 
 * Bulls and Cows is an old game played with pencil and paper that was later
 * implemented using computers.
 * 
 * Task:
 * 
 * Create a four digit random number from the digits 1 to 9, without
 * duplication.
 * 
 * The program should:
 * 
 *   ask for guesses to this number
 *   reject guesses that are malformed
 *   print the score for the guess
 * 
 * The score is computed as:
 * 
 * The player wins if the guess is the same as the randomly chosen number,
 * and the program ends.
 * A score of one bull is accumulated for each digit in the guess that equals
 * the corresponding digit in the randomly chosen initial number.
 * A score of one cow is accumulated for each digit in the guess that also
 * appears in the randomly chosen number, but in the wrong position. 
 * 
 * This sketch produces both a console transcript and GUI interface to the game.
 * Creates a new game each time the guess is correct; tracks number of games
 * won.
 */

IntDict score;
StringList choices;
StringList guess;
StringList secret;
int gamesWon = -1;

void setup() {
  choices = new StringList("0", "1", "2", "3", "4", "5", "6", "7", "8", "9");
  newGame();
}

void newGame() {
  gamesWon++;
  choices.shuffle();
  secret = new StringList();
  for (int i=0; i<4; i++) { // selections
    secret.append(choices.get(i));
  }
  newGuess();
  println("\nsecret:", secret, "\n");
}

void newGuess() {
  guess = new StringList();
  score = null;
}

void draw() {
  background(0);
  text("Bulls & Cows " + gamesWon, 5, 20);
  for (int i=0; i<guess.size(); i++) {
    text(guess.get(i), 20*i+10, height/2);
  }
  if (score!=null) {
    text("bulls:" + score.get("bulls") + " cows:" + score.get("cows"), 10, height-20);
  }
}

void keyReleased() {
  if (score!=null && score.get("bulls")==4) newGame();
  if (guess.size()==secret.size()) newGuess();
  if (guess.hasValue(str(key))) newGuess();
  if (key>=48 && key<=57) guess.append(str(key));
  if (guess.size()==secret.size()) {
    score = checkScore(secret, guess);
    println("guess: ", guess, "\n", score, "wins:", gamesWon);
  }
}

IntDict checkScore(StringList secret, StringList guess) {
  IntDict result = new IntDict();
  result.set("bulls", 0);
  result.set("cows", 0);
  for (int i=0; i<guess.size(); i++) {
    if (guess.get(i).equals(secret.get(i))) {
      result.add("bulls", 1);
    } else if (secret.hasValue(guess.get(i))) {
      result.add("cows", 1);
    }
  }
  return result;
}
