// Project Euler: Problem 1
//
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
// The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.
//
// Title: Multiples of 3 and 5
// Author: Jeffrey Lin
// Date: July 11, 2016

private var sum = 0
private var num = (Process.arguments.count == 1 ? 1000 : Int(Process.arguments[1]))
if num == nil { num = 1000 } // If argument is not a number.

for i in 0..<num! {
  if i % 3 == 0 || i % 5 == 0 {
      sum += i
  }
}

print(sum)
