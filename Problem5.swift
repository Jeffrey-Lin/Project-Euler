// Project Euler: Problem 5
//
// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
//
// Title: Smallest Multiple
// Author: Jeffrey Lin
// Date: July 31, 2016

public func smallestPositiveNumberDivisibleBy(min: Int, max: Int) -> Int {
  var index = 0
  var foundNumber = false

  while !foundNumber {
    index += 1
    for i in min...max {
      if index % i != 0 { break }
      if i == max {
        foundNumber = true
      }
    }
  }

  return index
}

private var min = (CommandLine.arguments.count == 1 ? 1 : Int(CommandLine.arguments[1]))
if min == nil { min = 1 } // If argument is not a number.
private var max = (CommandLine.arguments.count == 1 ? 20 : Int(CommandLine.arguments[2]))
if max == nil { max = 20 } // If argument is not a number.

print(smallestPositiveNumberDivisibleBy(min: min!, max: max!))
