// Project Euler: Problem 3
//
// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?
//
// Title: Largest Prime Factor
// Author: Jeffrey Lin
// Date: July 31, 2016

private func isPrime(number: Int) -> Bool {
  if number == 1 { return true }
  else if number == 2 { return true }

  for i in 2..<number {
    if number % i == 0 {
      return false
    }
  }
  return true
}

public func calculateLargestPrime(number: Int) -> Int {
  var largestPrime = 1
  var index = 2

  while index <= num! {
    if num! % index == 0 {
      if isPrime(number: index) {
        num! /= index
        largestPrime = index
      }
    }
    index += 1
  }
  return largestPrime
}

private var num = (CommandLine.arguments.count == 1 ? 600851475143 : Int(CommandLine.arguments[1]))
if num == nil { num = 600851475143 } // If argument is not a number.

print(calculateLargestPrime(number: num!))
