//: [Previous](@previous)

import Foundation

func challenge16a() {
    for i in 1...100 {
        if i % 3 == 0 && i % 5 == 0 {
            print("Fizz Buzz")
        } else if i % 3 == 0 {
            print("Fizz")
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

challenge16a()


// this function has a 33% performance increase because nesting the "Fizz Buzz" case + check of i % 5 == 0 inside i % 3 == 0 saves 66 checks, avoiding to have to check i % 3 == 0 twice. 
func challenge16b() {
    for i in 1...100 {
        if i % 3 == 0 {
            if i % 5 == 0 {
                print("Fizz Buzz")
            } else {
                print("Fizz")
            }
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

challenge16b()