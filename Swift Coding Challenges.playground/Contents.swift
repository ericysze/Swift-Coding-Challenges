//: Playground - noun: a place where people can play

import UIKit

func challenge1(input: String) -> Bool {
    
    var arr = Set<Character>()
    for i in input.characters {
        if arr.contains(i) {
            return false
        } else {
            arr.insert(i)
        }
    }
    return true
}

assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")

assert(challenge1(input: "aAa") == false, "Challenge 1 failed")

