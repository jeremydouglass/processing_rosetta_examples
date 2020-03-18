/**
 * BinaryDigits
 * https://rosettacode.org/wiki/Binary_digits#Processing
 * Processing 3.4
 * 2019-08 Jeremy Douglass
 * 
 * Task:
 * 
 * Create and display the sequence of binary digits for a given non-negative
 * integer.
 * 
 *   The decimal value      5   should produce an output of               101
 *   The decimal value     50   should produce an output of            110010
 *   The decimal value   9000   should produce an output of    10001100101000
 * 
 * The results can be achieved using built-in radix functions within the
 * language (if these are available), or alternatively a user defined function
 * can be used. The output produced should consist just of the binary digits of 
 * each number followed by a newline. There should be no other whitespace, 
 * radix or sign markers in the produced output, and leading zeros should not
 * appear in the results. 
 */

println(Integer.toBinaryString(5));     //            101
println(Integer.toBinaryString(50));    //         110010
println(Integer.toBinaryString(9000));  // 10001100101000

//Processing also has a binary() function, but this returns zero-padded results

println(binary(5));     // 00000000000101
println(binary(50));    // 00000000110010
println(binary(9000));  // 10001100101000
