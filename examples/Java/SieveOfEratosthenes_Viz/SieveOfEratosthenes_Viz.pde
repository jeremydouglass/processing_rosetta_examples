/**
 * SieveOfEratosthenes_Viz
 * https://rosettacode.org/wiki/Sieve_of_Eratosthenes#Processing
 * Processing 3.4
 * 2011-10-29‎ AlexLehm 
 * 2020-03-03 Jeremy Douglass
 * 
 * The Sieve of Eratosthenes is a simple algorithm that finds the prime numbers
 * up to a given integer.
 * 
 * Task:
 * 
 * Implement the Sieve of Eratosthenes algorithm, with the only allowed
 * optimization that the outer loop can stop at the square root of the limit,
 * and the inner loop may start at the square of the prime just found.
 * 
 * That means especially that you shouldn't optimize by using pre-computed
 * wheels, i.e. don't assume you need only to cross out odd numbers (wheel
 * based on 2), numbers equal to 1 or 5 modulo 6 (wheel based on 2 and 3), or
 * similar wheels based on low primes.
 * 
 * If there's an easy way to add such a wheel based optimization, implement it
 * as an alternative version.
 * 
 * Note:
 * It is important that the sieve algorithm be the actual algorithm used to
 * find prime numbers for the task.
 */

// Calculate the primes up to 1000000 with Processing,
// including a visualisation of the process.

int i=2;
int maxx;
int maxy;
int max;
boolean[] sieve;

void setup() {
  size(1000, 1000);
  // frameRate(2);
  maxx=width;
  maxy=height;
  max=width*height;
  sieve=new boolean[max+1];

  sieve[1]=false;
  plot(0, false);
  plot(1, false);
  for (int i=2; i<=max; i++) {
    sieve[i]=true;
    plot(i, true);
  }
}

void draw() {
  if (!sieve[i]) {
    while (i*i<max && !sieve[i]) {
      i++;
    }
  }
  if (sieve[i]) {
    print(i+" ");
    for (int j=i*i; j<=max; j+=i) {
      if (sieve[j]) {
        sieve[j]=false;
        plot(j, false);
      }
    }
  }
  if (i*i<max) {
    i++;
  } else {
    noLoop();
    println("finished");
  }
}

void plot(int pos, boolean active) {
  set(pos%maxx, pos/maxx, active?#000000:#ffffff);
}
