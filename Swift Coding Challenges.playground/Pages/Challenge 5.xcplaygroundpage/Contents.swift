//: [Previous](@previous)

import Foundation

func challenge5(string: String, find: Character) -> Int {
    var letterCount = 0
    
    for letter in string.characters {
        if letter == find {
            letterCount += 1
        }
    }
    return letterCount
}

challenge5(string: "The rain in Spain", find: "a")
challenge5(string: "Mississipi", find: "i")
challenge5(string: "Hacking with Swift", find: "i")


// the below function achieves the solution without using a for loop, it uses 'replacingOccurrences' to replace the character we're looking for with an empty character.
// after this return the subtraction of the modified input froom the original input
func challenge5d(input: String, count: String) -> Int {
    let modified = input.replacingOccurrences(of: count, with: "")
    return input.characters.count - modified.characters.count
}

challenge5d(input: "The rain in Spain", count: "a")
challenge5d(input: "Mississipi", count: "i")
challenge5d(input: "Hacking with Swift", count: "i")
