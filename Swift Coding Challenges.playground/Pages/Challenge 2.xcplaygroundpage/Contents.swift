//: [Previous](@previous)

import Foundation

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