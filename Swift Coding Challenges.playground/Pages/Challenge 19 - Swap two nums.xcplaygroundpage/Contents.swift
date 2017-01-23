//: [Previous](@previous)

import Foundation

var a = 3
var b = 10

// arithmetic solution

// 1 = 1 + 2    a = 3
// 2 = 3 - 2    b = 1
// 3 = 3 - 1    a = 2


// a = 5      // a = 10
// b = 11     // b = 3

a = a + b   // a = 16   // a = 13
b = a - b   // b = 5    // b = 10
a = a - b   // a = 11   // a = 3


// XOR solution
//a = a ^ b
//b = a ^ b
//a = a ^ b

print(a, b)


// global swap() function solution
//func challenge19(a: inout Int, b: inout Int) -> (Int, Int) {
//    swap(&a, &b)
//    return (a, b)
//}
//
//challenge19(a: &1, b: &2)
//swap(&a, &b)

// tuple swap solution
(a, b) = (b, a)
