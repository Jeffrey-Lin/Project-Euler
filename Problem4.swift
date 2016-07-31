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
    return num == String(num.characters.reverse())
}

var largestPalindrome = 0
var max = 999

firstLoop: while max > 500 {
    var second_max = 999
    secondLoop: while second_max > 0 {
        if isPalindrome(String(second_max * max)) {
            if second_max * max > largestPalindrome {
                largestPalindrome = second_max * max
            }
        }
        second_max -= 1
    }

    max -= 1
}

print(largestPalindrome)
