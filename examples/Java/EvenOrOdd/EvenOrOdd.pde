/**
* EvenOrOdd
* https://rosettacode.org/wiki/Even_or_odd#Processing
* Processing 3.5.4
* 2020-02-25 Dawit Ghebrehiwet
* 2017-09-05 CerealKiller
* 
* Task:
* 
* Test whether an integer is even or odd.
* 
* There is more than one way to solve this task:
* 
* Use the even and odd predicates, if the language provides them.
* Check the least significant digit. With binary integers, i bitwise-and 1 equals 0 iff i is even, or equals 1 iff i is odd.
* Divide i by 2. The remainder equals 0 iff i is even. The remainder equals +1 or -1 iff i is odd.
* Use modular congruences:
* i ≡ 0 (mod 2) iff i is even.
* i ≡ 1 (mod 2) iff i is odd.
*
* Note:
* 
* Added examples.
*
* 10 numbers between -100 and 100 are generated. For each one the functions isEven and isOdd are called to see if the number is even or odd. The result is printed to the console.
*
* Example result on the console.
*
* 1. 83 isEven: false - isOdd: true
* 2. -17 isEven: false - isOdd: false
* 3. -5 isEven: false - isOdd: false
* 4. 11 isEven: false - isOdd: true
* 5. -38 isEven: true - isOdd: false
* 6. -22 isEven: true - isOdd: false
* 7. 7 isEven: false - isOdd: true
* 8. 38 isEven: true - isOdd: false
* 9. -44 isEven: true - isOdd: false
* 10. 0 isEven: true - isOdd: false
* 
*/

void setup(){
  println("EvenOrOdd");
  
  for (int i=1; i <= 10; i++){
    int n = (int) random(-100, 100);
    
    println("* " + i + ". " + n + " isEven: " + isEven(n) + " - isOdd: " + isOdd(n));
  }
}

boolean isEven(int i){
  return i%2 == 0;
}
 
boolean isOdd(int i){
  return i%2 == 1;
}
