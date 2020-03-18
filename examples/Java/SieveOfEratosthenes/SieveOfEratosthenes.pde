/**
 * SieveOfEratosthenes
 * https://rosettacode.org/wiki/Sieve_of_Eratosthenes#Processing
 * Processing 3.4
 * 2019-08 Jeremy Douglass
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
 * 
 * Translation of Java:infinite iterator with a very fast page segmentation
 * algorithm (sieves odds-only)
 */

import java.util.Iterator;

void setup() {    
  long n = 1000000000;
  int strt = millis();
  Iterator<Long> gen = new SoEPagedOdds();
  int count = 0;
  while (gen.next() <= n) count++;
  int elpsd = millis() - strt;
  println("Found " + count + " primes up to " + n + " in " + elpsd + " milliseconds.");
}

class SoEPagedOdds implements Iterator<Long> {
  int BFSZ = 1 << 16;
  int BFBTS = BFSZ * 32;
  int BFRNG = BFBTS * 2;
  long bi = -1;
  long lowi = 0;
  IntList bpa = new IntList();
  Iterator<Long> bps;
  int[] buf = new int[BFSZ];

  @Override boolean hasNext() { 
    return true;
  }
  @Override Long next() {
    if (this.bi < 1) {
      if (this.bi < 0) {
        this.bi = 0;
        return 2L;
      }
      //this.bi muxt be 0
      long nxt = 3 + (this.lowi << 1) + BFRNG;
      if (this.lowi <= 0) { // special culling for first page as no base primes yet:
        for (int i = 0, p = 3, sqr = 9; sqr < nxt; i++, p += 2, sqr = p * p)
          if ((this.buf[i >>> 5] & (1 << (i & 31))) == 0)
            for (int j = (sqr - 3) >> 1; j < BFBTS; j += p)
              this.buf[j >>> 5] |= 1 << (j & 31);
      } else { // after the first page:
        for (int i = 0; i < this.buf.length; i++)
          this.buf[i] = 0; // clear the sieve buffer
        if (this.bpa.size()==0) { // if this is the first page after the zero one:
          this.bps = new SoEPagedOdds(); // initialize separate base primes stream:
          this.bps.next(); // advance past the only even prime of two
          this.bpa.append(this.bps.next().intValue()); // get the next prime (3 in this case)
        }
        // get enough base primes for the page range...
        for (long p = this.bpa.get(this.bpa.size() - 1), sqr = p * p; sqr < nxt; 
          p = this.bps.next(), this.bpa.append((int)p), sqr = p * p) ;
        for (int i = 0; i < this.bpa.size() - 1; i++) {
          long p = this.bpa.get(i);
          long s = (p * p - 3) >>> 1;
          if (s >= this.lowi) // adjust start index based on page lower limit...
            s -= this.lowi;
          else {
            long r = (this.lowi - s) % p;
            s = (r != 0) ? p - r : 0;
          }
          for (int j = (int)s; j < BFBTS; j += p)
            this.buf[j >>> 5] |= 1 << (j & 31);
        }
      }
    }
    while ((this.bi < BFBTS) &&
      ((this.buf[(int)this.bi >>> 5] & (1 << ((int)this.bi & 31))) != 0))
      this.bi++; // find next marker still with prime status
    if (this.bi < BFBTS) // within buffer: output computed prime
      return 3 + ((this.lowi + this.bi++) << 1);
    else { // beyond buffer range: advance buffer
      this.bi = 0;
      this.lowi += BFBTS;
      return this.next(); // and recursively loop
    }
  }
}
