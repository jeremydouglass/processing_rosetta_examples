"""
LevenshteinDistance
https://rosettacode.org/wiki/Levenshtein_distance#Processing
Processing 3.4
2020-04 Alexandre Villares

In information theory and computer science, the Levenshtein distance is a
metric for measuring the amount of difference between two sequences (i.e. an
edit distance). The Levenshtein distance between two strings is defined as
the minimum number of edits needed to transform one string into the other,
with the allowable edit operations being insertion, deletion, or 
substitution of a single character.

Example The Levenshtein distance between "kitten" and "sitting" is 3, since
the following three edits change one into the other, and there isn't a way
to so it with fewer than three edits:

 kitten sitten (substitution of 'k' with 's') sitten sittin (substitution of
'e' with 'i') sittin sitting (insert 'g' at the end).

The Levenshtein distance between "rosettacode", "raisethysword" is 8.

The distance between two strings is same as that when both strings are 
reversed.

Task:

Implements a Levenshtein distance function, or uses a library function, to
show the Levenshtein distance between "kitten" and "sitting".
"""

def setup():
    println(distance("kitten", "sitting"))

def distance(a, b):
    costs = []
    for j in range(len(b) + 1):
        costs.append(j)
    for i in range(1, len(a) + 1):
        costs[0] = i
        nw = i - 1
        for j in range(1, len(b) + 1):
            cj = min(1 + min(costs[j], costs[j - 1]),
                     nw if a[i - 1] == b[j - 1] else nw + 1)
            nw = costs[j]
            costs[j] = cj

    return costs[len(b)]


"""
OUTPUT
3
"""
