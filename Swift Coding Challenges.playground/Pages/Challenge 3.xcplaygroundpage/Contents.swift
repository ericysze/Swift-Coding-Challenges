//: [Previous](@previous)

import Foundation

func challenge3a(first: String, second: String) -> Bool {
    var mutableString = second
    
    for letter in first.characters {
        // use if let (optional binding) to test if the second string contains an 'optional' value at the index of i. If it does, bind or 'unwrap' the value to a temporary variable
        // in other words, if let is used in this case to prevent a crash if 'mutableString' doesn't contain the letter we are looking for from the first string
        if let idx = mutableString.characters.index(of: letter) {
            // if the if let binds and stores to the temp value,
            // remove it the character at that index
            mutableString.characters.remove(at: idx)
        } else {
            return false
        }
    }
    return mutableString.characters.count == 0
}


func challenge3b(string1: String, string2: String) -> Bool {
    let array1 = Array(string1.characters)
    let array2 = Array(string2.characters)
    return array1.sorted() == array2.sorted()
}
//For bonus interview points, you might be tempted to write something like this:
//return array1.count == array2.count && array1.sorted() == array2.sorted()

assert(challenge3b(string1: "abca", string2: "abca") == true, "Challenge 3 failed")
assert(challenge3b(string1: "abc", string2: "cba") == true, "Challenge 3 failed")
assert(challenge3b(string1: " a1 b2 ", string2: "b 1 a 2") == true, "Challenge 3 failed")
assert(challenge3b(string1: "abc", string2: "Abc") == false, "Challenge 3 failed")
assert(challenge3b(string1: "abc", string2: "cbAa") == false, "Challenge 3 failed")