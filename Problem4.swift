// Project Euler: Problem 4
//
// A palindromic number reads the same both ways.
// The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
// Find the largest palindrome made from the product of two 3-digit numbers.
//
// Title: Largest Palindrome Product
// Author: Jeffrey Lin
// Date: July 31, 2016

private var max = (Process.arguments.count == 1 ? 999 : Int(Process.arguments[1]))
if max == nil { max = 999 } // If argument is not a number.
private var second_max = (Process.arguments.count == 1 ? 999 : Int(Process.arguments[2]))
if second_max == nil { second_max = 999 } // If argument is not a number.

private func isPalindrome(num: String) -> Bool {
    return num == String(num.characters.reverse())
}

var largestPalindrome = 0

while max! > max!/2 {
  var temp_second_max = second_max!
  while temp_second_max > 0 {
    if isPalindrome(String(temp_second_max * max!)) {
      if temp_second_max * max! > largestPalindrome {
        largestPalindrome = temp_second_max * max!
      }
    }
    temp_second_max -= 1
  }

  max! -= 1
}

print(largestPalindrome)
