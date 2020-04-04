"""
JosephusProblem
https://rosettacode.org/wiki/Josephus_problem#Processing
Processing 3.4
2020-04 Alexandre Villares
[Translation of Processing Java example.]

Josephus problem is a math puzzle with a grim description:
n prisoners are standing on a circle, sequentially numbered from 0 to n-1.
An executioner walks along the circle, starting from prisoner 0, removing 
every k-th prisoner and killing him.

As the process goes on, the circle becomes smaller and smaller, until only
one prisoner remains, who is then freed.

For example, if there are 5 prisoners and k=2, the order the prisoners are
killed in (let's call it the "killing sequence") will be 1, 3, 0, and 4, and 
the survivor will be #2.

Task:

Given any n, k>0, find out which prisoner will be the final survivor.

In one such incident, there were 41 prisoners and every 3rd prisoner was 
being killed (k=3).

Among them was a clever chap name Josephus who worked out the problem, stood 
at the surviving position, and lived on to tell the tale.

Which number was he?
"""

from __future__ import print_function

def setup() :
    print("Survivor: " + str(execute(41, 3)))
    print("Survivors: " + str(executeAllButM(41, 3, 3)))


def execute(n, k) :
    killIdx = 0
    prisoners = []
    for i in range(n):
        prisoners.append(i)
        
    print("Prisoners executed in order:")
    while len(prisoners) > 1:
        killIdx = (killIdx + k - 1) % len(prisoners)
        print(str(prisoners[killIdx]) + " ", end='')
        del prisoners[killIdx]
        
    print()
    return prisoners[0]


def executeAllButM(n, k, m) :
    killIdx = 0
    prisoners = []
    for i in range(n):
        prisoners.append(i)
        
    print("Prisoners executed in order:")
    while len(prisoners) > m:
        killIdx = (killIdx + k - 1) % len(prisoners)
        print(str(prisoners[killIdx]) + " ", end='')
        del prisoners[killIdx]
    
    print()
    return prisoners

"""
OUTPUT

Prisoners executed in order:
2 5 8 11 14 17 20 23 26 29 32 35 38 0 4 9 13 18 22 27 31 36 40 6 12 19 25 33 39 7 16 28 37 10 24 1 21 3 34 15 
Survivor: 30
Prisoners executed in order:
2 5 8 11 14 17 20 23 26 29 32 35 38 0 4 9 13 18 22 27 31 36 40 6 12 19 25 33 39 7 16 28 37 10 24 1 21 3 
Survivors: [ 15, 30, 34 ]
"""
