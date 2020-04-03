"""
RepeatAString
https://rosettacode.org/wiki/Repeat_a_string#Processing
Processing 3.4
2020-03 Alexandre Villares

Task:

Take a string and repeat it some number of times.

Example: repeat("ha", 5) => "hahahahaha"
If there is a simpler/more efficient way to repeat a single “character”
(i.e. creating a string filled with a certain character),
you might want to show that as well (i.e. repeat-char("*", 5) => "*****").
"""

def setup():
    rep = repeat("ha", 5)
    println(rep)

def repeat(s, times):
    return s * times
