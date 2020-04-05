"""
PalindromeDetection
https://rosettacode.org/wiki/Palindrome_detection#Processing
Processing 3.5.4
2020-04 Alexandre Villares

A palindrome is a phrase which reads the same backward and forward.

Task:

Write a function or program that checks whether a given sequence of
characters (or, you prefer, bytes) is a palindrome.

For extra credit:

Support Unicode characters.
Write a second function (possibly as a wrapper to the first) which detects
inexact palindromes, i.e. phrases that are palindromes if white-space and
punctuation is ignored and case-insensitive comparison is used.

Hints
  It might be useful for this task to know how to reverse a string.
  This task's entries might also form the subjects of the task
  Test a function.

Related tasks
  Word plays
  Ordered words
  Palindrome detection
  Semordnilap
  Anagrams
  Anagrams/Deranged anagrams

Example result on the console.

PalindromeDetection
1. 'abcba' isExactPalindrome: True isInexactPalindrome: True
2. 'aa' isExactPalindrome: True isInexactPalindrome: True
3. 'a' isExactPalindrome: True isInexactPalindrome: True
4. '' isExactPalindrome: True isInexactPalindrome: True
5. ' ' isExactPalindrome: True isInexactPalindrome: True
6. 'ab' isExactPalindrome: False isInexactPalindrome: false
7. 'abcdba' isExactPalindrome: False isInexactPalindrome: false
8. 'A man, a plan, a canal: Panama!' isExactPalindrome: False isInexactPalindrome: True
9. 'Dammit, I’m Mad! ' isExactPalindrome: False isInexactPalindrome: True
10. 'Never odd or even' isExactPalindrome: False isInexactPalindrome: True
11. 'ingirumimusnocteetconsumimurigni' isExactPalindrome: True isInexactPalindrome: True

"""

from __future__ import unicode_literals

def setup():
    println("PalindromeDetection")

    tests = (
        "abcba",
        "aa",
        "a",
        "",
        " ",
        "ab",
        "abcdba",
        "A man, a plan, a canal: Panama!",
        "Dammit, I’m Mad!",
        "Never odd or even",
        "ingirumimusnocteetconsumimurigni"
    )

    for i, test in enumerate(tests):
        println(str(i + 1) + ". '" + test + "' isExactPalindrome: " +
                isExactPalindrome(test) + " isInexactPalindrome: " + isInexactPalindrome(test))

def isExactPalindrome(s):
    """
    Check for exact palindrome using reversal
    with slice syntax [start:end:step]
    """
    return str(s == s[::-1])

def isInexactPalindrome(s):
    """
    Check for inexact palindrome disregarding anything but alphabet characters.
    Disregards case, whitespace, non-visible characters.
    Uses the check for exact palindrome above.
    """
    s = ''.join(ch for ch in s if ch.isalnum())
    return isExactPalindrome(s.lower()) 
