// Project Euler: Problem 7
//
// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
// What is the 10,001st prime number?
//
// Title: 10,0001st Prime
// Author: Jeffrey Lin
// Date: August 1, 2016

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

private var num = (Process.arguments.count == 1 ? 100 : Int(Process.arguments[1]))
if num == nil { num = 100 } // If argument is not a number.

private var count = 0
private var index = 1

while count < num! {
  index += 1
  if isPrime(index) { count += 1 }
}

print(index)
