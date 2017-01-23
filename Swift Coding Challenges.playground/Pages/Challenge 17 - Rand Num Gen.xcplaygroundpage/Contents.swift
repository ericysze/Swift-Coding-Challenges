//: [Previous](@previous)

import Foundation

func challenge17(min: Int, max: Int) -> Int {

    return Int(arc4random_uniform(UInt32(max - min + 1))) + min
}

challenge17(min: 1, max: 5)
challenge17(min: 8, max: 10)
challenge17(min: 12, max: 12)
challenge17(min: 12, max: 18)

//assert(challenge17(min: 1, max: 5) == , <#T##message: String##String#>)
//assert(challenge18(number: 0, power: 0) == 0, "Challenge 18 failed")
