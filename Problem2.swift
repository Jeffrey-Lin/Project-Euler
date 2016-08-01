// Project Euler: Problem 2
//
// Each new term in the Fibonacci sequence is generated by adding the previous two terms.
// By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
// By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
//
// Title: Even Fibonnaci Numbers
// Author: Jeffrey Lin
// Date: July 11, 2016

private var num = (Process.arguments.count == 1 ? 4_000_000 : Int(Process.arguments[1]))
if num == nil { num = 4_000_000 } // If argument is not a number.

private var sum = 0
private var firstNum = 1
private var secondNum = 2

while secondNum < num {
  if secondNum % 2 == 0 {
      sum += secondNum
  }

  let temp = secondNum
  secondNum += firstNum
  firstNum = temp
}

print(sum)
