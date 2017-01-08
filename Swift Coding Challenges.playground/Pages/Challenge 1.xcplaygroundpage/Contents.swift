//: Playground - noun: a place where people can play

import UIKit

func challenge1a(input: String) -> Bool {
    // below solution does not scale well if input size is too large because calling 'contains()' is an O(n), or linear operation. This would be especially bad if the input were in a language with very few duplicate characters such as Chinese as this could cause performance issues.
    var arr = [Character]()
    for i in input.characters {
        if arr.contains(i) {
            return false
        } else {
            arr.append(i)
        }
    }
    return true
}

func challenge1b(input: String) -> Bool {
    // below soultion is most optimal
    // count the input's characters
    // and compare it to the count of the input's characters when inside a Set
    return Set(input.characters).count == input.characters.count
}

assert(challenge1b(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1b(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1b(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1b(input: "Hello, world") == false, "Challenge 1 failed")

assert(challenge1b(input: "aAa") == false, "Challenge 1 failed")





