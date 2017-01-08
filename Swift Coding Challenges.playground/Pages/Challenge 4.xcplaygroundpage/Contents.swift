//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

extension String {
    func fuzzyContains(string: String) -> Bool {
        // create an extension of String, and use swift's built in range to check if the input exists within the checked string
        // both solutions work, however calling '.caseInsensitive' has better performance
        //
//        return self.uppercased().range(of: string.uppercased()) != nil
        return range(of: string, options: .caseInsensitive) != nil
    }
}

"Hello, world".fuzzyContains(string: "hello")