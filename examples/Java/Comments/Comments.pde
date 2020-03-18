/**
 * Comments
 * https://rosettacode.org/wiki/Comments#Processing
 * Processing 3.4
 * 2019-12 Jeremy Douglass
 * 2016-04-09 Edmund
 * 
 * Task:
 * 
 * Show all ways to include text in a language source file that's
 * completely ignored by the compiler or interpreter.
 */


// a single-line comment
 

/* a multi-line
   comment
*/
 

/*
 * a multi-line comment
 * with some decorative stars
 */


// comment out a code line
// println("foo");


// comment at the end of a line
println("foo", "bar"); // "baz"


// comment inline -- NOT recommended style
println("foo", /*"bar",*/ "baz");
