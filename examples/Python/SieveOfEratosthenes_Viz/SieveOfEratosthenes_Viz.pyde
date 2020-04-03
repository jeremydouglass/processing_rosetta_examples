"""
SieveOfEratosthenes_Viz
https://rosettacode.org/wiki/Sieve_of_Eratosthenes#Processing
Processing 3.4
2020-04 Alexandre Villares
 
The Sieve of Eratosthenes is a simple algorithm that finds the prime numbers
up to a given integer.
 
Task:
 
Implement the Sieve of Eratosthenes algorithm, with the only allowed
optimization that the outer loop can stop at the square root of the limit,
and the inner loop may start at the square of the prime just found.
 
That means especially that you shouldn't optimize by using pre-computed
wheels, i.e. don't assume you need only to cross out odd numbers (wheel
based on 2), numbers equal to 1 or 5 modulo 6 (wheel based on 2 and 3), or
similar wheels based on low primes.
 
If there's an easy way to add such a wheel based optimization, implement it
as an alternative version.
 
Note:
It is important that the sieve algorithm be the actual algorithm used to
find prime numbers for the task.
"""

# Calculate the primes up to 1000000 with Processing,
# including a visualisation of the process.

from __future__ import print_function

i = 2

def setup():
    size(1000, 1000)
    # frameRate(2)
    global maxx, maxy, max_num, sieve
    maxx = width
    maxy = height
    max_num = width * height
    sieve = [False] * (max_num + 1)

    sieve[1] = False
    plot(0, False)
    plot(1, False)
    for i in range(2, max_num + 1):
        sieve[i] = True
        plot(i, True)


def draw():
    global i
    if not sieve[i]:
        while (i * i < max_num and not sieve[i]):
            i += 1

    if sieve[i]:
        print("{} ".format(i), end='')
        for j in range(i * i, max_num + 1, i):
            if sieve[j]:
                sieve[j] = False
                plot(j, False)

    if i * i < max_num:
        i += 1
    else:
        noLoop()
        println("finished")


def plot(pos, active):
    set(pos % maxx, pos / maxx, color(0) if active else color(255))
