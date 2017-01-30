//: [Previous](@previous)

import Foundation

extension Collection where Iterator.Element == Int {
    func challenge37(char: Character) -> Int {
        var count = 0
        
        for i in self {
            // cast the num as a string, this way you are allowed to loop through each character
            let string = String(i)
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