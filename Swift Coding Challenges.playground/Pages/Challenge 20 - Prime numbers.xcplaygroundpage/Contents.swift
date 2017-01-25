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