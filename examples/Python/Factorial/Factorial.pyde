"""
Factorial
https://rosettacode.org/wiki/Factorial#Processing
Processing 3.5.4
2020-04-04 Alexandre Villares (Python port)
2020-02-26 Dawit Ghebrehiwet (iterative approach)
2018-05-29 Wester Iii (recursive approach)

Definitions
    The factorial of 0 (zero) is defined as being 1 (unity).
    The Factorial Function of a positive integer, n, is defined as the product of the sequence: n, n-1, n-2, ... 1

Task:

Write a function to return the factorial of a number.
Solutions can be iterative or recursive.
Support for trapping negative n errors is optional.

Note:

fr implements the recursive approach
fi implements the iterative approach

Factorials of negative numbers return -1 as an error code.
*
* Examples:
*
Generate 10 random numbers between -5 and 20 calcualate the factorial with the recursive approach and the iterative apporach.
A note on choosing between and for the calculation of factorials: as stated in https://processing.org/reference/int.html the maximum number which can be stored as an interger is 2,147,483,647. So 12! = 479,001,600 is the largest factorial wich can be stored as an integer variable. 13! = 6,227,020,800 already exceeds that boundary. In order to calculate bigger factorials the data type of the variables was set to (https://processing.org/reference/long.html) wich allows numbers up to 9,223,372,036,854,775,807. 20! = 2,432,902,008,176,640,000 is the largest factorial which can be stored as a variable. 21! = 51,090,942,171,709,440,000 exceeds the boundary again. To keep this example simple the data type of the result was left at long.
*
Example output:
*
* Factorial
* fr = recursive approach
* fi = iterative approach
* 1. 12 fr(12) = 479001600 fi(12) = 479001600
* 2. 19 fr(19) = 121645100408832000 fi(19) = 121645100408832000
* 3. 1 fr(1) = 1 fi(1) = 1
* 4. 4 fr(4) = 24 fi(4) = 24
* 5. 16 fr(16) = 20922789888000 fi(16) = 20922789888000
* 6. 16 fr(16) = 20922789888000 fi(16) = 20922789888000
* 7. 0 fr(0) = 1 fi(0) = 1
* 8. 10 fr(10) = 3628800 fi(10) = 3628800
* 9. -3 fr(-3) is not defined fi(-3) is not defined
* 10. 19 fr(19) = 121645100408832000 fi(19) = 121645100408832000
*
"""
from __future__ import print_function

def setup():
        println("* Factorial")
        println("* fr = recursive approach")
        println("* fi = iterative approach")                
        for i in range(11):
            n = int(random(-5, 20))
            rr = fr(n)
            ri = fi(n)
            
            print("* {}. {}".format(i, n), end='')
            if rr == -1:
                print(" fr({}) is not defined".format(n), end='')
            else:
                print(" fr({}) = {}".format(n, rr), end='')
            if ri == -1:
                print(" fi({}) is not defined".format(n), end='')
            else :
                print(" fi({}) = {}".format(n, ri), end='')        
            println("")
        

def fr(n):
        if n < 0:
            return -1
        if n == 0:
            return 1
        else:
            return n * fr(n-1)

def fi(n):
        if n < 0:
            return -1    
        if n == 0:
            return 1
        else:
            r = 1
            for i in range(1, n + 1):
                r = r * i
            return r
