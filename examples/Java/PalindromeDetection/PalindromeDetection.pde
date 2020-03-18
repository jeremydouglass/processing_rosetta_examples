/**
 * PalindromeDetection
 * https://rosettacode.org/wiki/Palindrome_detection#Processing
 * Processing 3.5.4
 * 2020-03-02 da8
 * 2018-05-24 Wester Iii
 * 
 * A palindrome is a phrase which reads the same backward and forward.
 * 
 * Task
 * 
 * Write a function or program that checks whether a given sequence of
 * characters (or, if you prefer, bytes) is a palindrome.
 * 
 * For extra credit:
 * 
 * Support Unicode characters.
 * Write a second function (possibly as a wrapper to the first) which detects
 * inexact palindromes, i.e. phrases that are palindromes if white-space and
 * punctuation is ignored and case-insensitive comparison is used.
 * 
 * Hints
 *   It might be useful for this task to know how to reverse a string.
 *   This task's entries might also form the subjects of the task
 *   Test a function.
 * 
 * Related tasks
 *   Word plays
 *   Ordered words
 *   Palindrome detection
 *   Semordnilap
 *   Anagrams
 *   Anagrams/Deranged anagrams
 * 
 * Example result on the console.
 * 
 * PalindromeDetection
 * 1. 'abcba' isExactPalindrome: true isInexactPalindrome: true
 * 2. 'aa' isExactPalindrome: true isInexactPalindrome: true
 * 3. 'a' isExactPalindrome: true isInexactPalindrome: true
 * 4. '' isExactPalindrome: true isInexactPalindrome: true
 * 5. ' ' isExactPalindrome: true isInexactPalindrome: true
 * 6. 'ab' isExactPalindrome: false isInexactPalindrome: false
 * 7. 'abcdba' isExactPalindrome: false isInexactPalindrome: false
 * 8. 'A man, a plan, a canal: Panama!' isExactPalindrome: false isInexactPalindrome: true
 * 9. 'Dammit, I’m Mad!' isExactPalindrome: false isInexactPalindrome: true
 * 10. 'Never odd or even' isExactPalindrome: false isInexactPalindrome: true
 * 11. 'ingirumimusnocteetconsumimurigni' isExactPalindrome: true isInexactPalindrome: true
 * 
 */

void setup(){
  println("PalindromeDetection");
  
  String[] tests = {
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
  };
  
  for (int i = 0; i < tests.length; i++){
    println((i + 1) + ". '" + tests[i] + "' isExactPalindrome: " + isExactPalindrome(tests[i]) + " isInexactPalindrome: " + isInexactPalindrome(tests[i]));
  }
}

/*
 * Check for exact palindrome using StringBuilder since String in Java does
 * not provide any reverse functionality because Strings are immutable.
 */
boolean isExactPalindrome(String s){
  StringBuilder sb = new StringBuilder(s);
  return s.equals(sb.reverse().toString());
}

/*
 * Check for inexact palindrome disregarding anythiing but alphabet characters.
 * Disregards case, whitespace, and non-visible characters.
 * Uses the check for exact palindrome above.
 */
boolean isInexactPalindrome(String s){
  return isExactPalindrome(s.replaceAll("\\s+","").replaceAll("[^A-Za-z]+", "").toLowerCase());
}
