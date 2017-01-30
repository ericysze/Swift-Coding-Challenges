//: [Previous](@previous)

import Foundation

// create an extension on a Collection type
// use where, to only allow the calling of this extension on collections of integers
// also, where is a boolean check, if the
extension Collection where Iterator.Element == Int {
    func challenge37(char: Character) -> Int {
        var count = 0
        
        for i in self {
            // cast the num as a string, this way you are allowed to loop through each character
            let string = String(describing: i)
            // now loop through each letter in the string, incrementing by 1 if the 'letter' matches the char you're looking for
            for letter in string.characters {
                if letter == char {
                    count += 1
                }
            }
        }
        return count
    }
}

[5, 15, 55, 515].challenge37(char: "5")
[5, 15, 55, 515].challenge37(char: "1")
[55555].challenge37(char: "5")
[55555].challenge37(char: "1")

// this below collection of strings will not be allowed to call the extension challenge 37 as where only allows it to be used with collections of integers
//["55", "5"].challenge37(char: "5")

