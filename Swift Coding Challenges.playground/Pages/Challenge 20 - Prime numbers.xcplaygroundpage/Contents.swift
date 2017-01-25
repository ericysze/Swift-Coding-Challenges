//: [Previous](@previous)

import Foundation

// inefficient solution
func challenge20(number: Int) -> Bool {
    
    guard number >= 2 else { return false }
    
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    
    return true
}
challenge20(number: 14641)
challenge20(number: 11)
challenge20(number: 13)
challenge20(number: 4)
challenge20(number: 9)
challenge20(number: 16777259)

challenge20(number: 121)
challenge20(number: 55)
challenge20(number: 49)
challenge20(number: 169)


func challenge20b(number: Int) -> Bool {
    // if the input number is greater than or equal to two, continue with the rest of this function, if its less than two return false
    guard number >= 2 else { return false }
    // if the number is not equal to two, but was allowed through the previous guard statement, continue with the rest of this function,
    // if the number is two, return true, because two is a prime number
    // the only reason why is the only prime number that is not checked for a prime number is because the below for loop would return false as 2 % 2 == 0 and this function
    // doesn't check if the number is divisible by 1 and itself
    guard number != 2 else { return true }
    
    // create a constant that is equal to the rounded up, square rooted number
    // (type cast the number to double so sqrt call can use it)
    // (also type cast the entire ceil'ed number with int )
    let max = Int(ceil(sqrt(Double(number))))
    
    // loop through checking 2 to max
    for i in 2...max {
        // if number is divisible by i and returns a remainder of 0, it is not prime, therefore, return false
        if number % i == 0 {
            return false
        }
    }
    // if the number is not divisible by any number from 2, up until the rounded up, square rooted number, return true
    return true
}