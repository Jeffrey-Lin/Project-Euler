// Project Euler: Problem 5
//
// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
//
// Title: Smallest Multiple
// Author: Jeffrey Lin
// Date: July 31, 2016

private var min = (Process.arguments.count == 1 ? 1 : Int(Process.arguments[1]))
if min == nil { min = 1 } // If argument is not a number.
private var max = (Process.arguments.count == 1 ? 20 : Int(Process.arguments[2]))
if max == nil { max = 20 } // If argument is not a number.

private var index = 0
private var foundNumber = false

while !foundNumber {
  index += 1
  for i in min!...max! {
    if index % i != 0 { break }
    if i == max! {
      foundNumber = true
    }
  }
}

print(index)
