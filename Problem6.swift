// Project Euler: Problem 6
//
// The sum of the squares of the first ten natural numbers is 1^2 + 2^2 + ... + 10^2 = 385
// The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)^2 = 55^2 = 3025
// Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
//
// Title: Sum Square Difference
// Author: Jeffrey Lin
// Date: August 1, 2016

private var num = (CommandLine.arguments.count == 1 ? 100 : Int(CommandLine.arguments[1]))
if num == nil { num = 100 } // If argument is not a number.

private var sumOfSquares = 0
private var squareOfSum = 0

for i in 1...num! {
  sumOfSquares += i * i
  squareOfSum += i
}

squareOfSum *= squareOfSum

print(squareOfSum - sumOfSquares)
