// Project Euler: Problem 4
//
// A palindromic number reads the same both ways.
// The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
// Find the largest palindrome made from the product of two 3-digit numbers.
//
// Title: Largest Palindrome Product
// Author: Jeffrey Lin
// Date: July 31, 2016

private func isPalindrome(num: String) -> Bool {
    return num == String(num.characters.reversed())
}

public func findLargestPalindromeFromProductOf(a: Int, b: Int) -> Int {
  var largestPalindrome = 0
  var temp_a = a

  while temp_a > a/2 {
    var temp_b = b
    while temp_b > 0 {
      if isPalindrome(num: String(temp_b * temp_a)) {
        if temp_b * temp_a > largestPalindrome {
          largestPalindrome = temp_b * max!
        }
      }
      temp_b -= 1
    }

    temp_a -= 1
  }

  return largestPalindrome
}

private var max = (CommandLine.arguments.count == 1 ? 999 : Int(CommandLine.arguments[1]))
if max == nil { max = 999 } // If argument is not a number.
private var second_max = (CommandLine.arguments.count == 1 ? 999 : Int(CommandLine.arguments[2]))
if second_max == nil { second_max = 999 } // If argument is not a number.

print(findLargestPalindromeFromProductOf(a: max!, b: second_max!))
