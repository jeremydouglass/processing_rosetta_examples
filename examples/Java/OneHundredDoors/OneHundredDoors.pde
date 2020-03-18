/**
 * 100 Doors
 * http://rosettacode.org/wiki/100_doors#Processing
 * Processing 3.4
 * 2019-12-10 Jeremy Douglass
 * 2015‎-12-11 Jsheradin
 * 
 * There are 100 doors in a row that are all initially closed.
 * You make 100 passes by the doors.
 * 
 * The first time through, visit every door and  toggle  the door 
 * (if the door is closed,  open it;   if it is open,  close it).
 * The second time, only visit every 2nd door (door #2, #4, #6, ...),
 * and toggle it.
 * The third time, visit every 3rd door (door #3, #6, #9, ...),
 * etc, until you only visit the 100th door.
 * 
 * Task:
 * 
 * Answer the question:
 * What state are the doors in after the last pass?
 * Which are open, which are closed?
 */

boolean[] doors = new boolean[100];

void setup() {
  for (int i = 0; i < 100; i++) {
    doors[i] = false;
  }
  for (int i = 1; i < 100; i++) {
    for (int j = 0; j < 100; j += i) {
      doors[j] = !doors[j];
    }
  }
  println("Open:");
  for (int i = 1; i < 100; i++) {
    if (doors[i]) {
      println(i);
    }
  }
  exit();
}

/**
 * OUTPUT
 * 
 * Open:
 * 1
 * 4
 * 9
 * 16
 * 25
 * 36
 * 49
 * 64
 * 81
 */
