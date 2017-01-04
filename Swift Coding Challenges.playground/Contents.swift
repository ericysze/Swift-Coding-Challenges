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



func challenge2(input: String) -> Bool {
    // do not need to create loop through input backwards, using 'reversed()' will automatically reverse it and reversed input does not need to be stored into an array as it automatically does that too. However, an array cannot be compared to input.characters as it is not an array and therefore will throw an error, to solve this, input.characters needs to be created into an Array().
    let lowercaseInput = input.lowercased()
    if Array(lowercaseInput.characters) == lowercaseInput.characters.reversed() {
        return true
    }
    return false
}

assert(challenge2(input: "rotator") == true, "Challenge 1 failed")
assert(challenge2(input: "Rats live on no evil star") == true, "Challenge 1 failed")
assert(challenge2(input: "Never odd of even") == false, "Challenge 1 failed")
assert(challenge2(input: "Hello, world") == false, "Challenge 1 failed")
