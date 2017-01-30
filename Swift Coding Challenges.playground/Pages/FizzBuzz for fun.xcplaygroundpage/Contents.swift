//: [Previous](@previous)

import Foundation

func fizzBuzz(input: Int) {
    for number in 1...input {
        if number % 3 == 0 {
            if number % 5 == 0 {
                print("FizzBuzz")
            } else {
                print("Fizz")
            }
        } else if number % 5 == 0 {
            print("Buzz")
        }
        else {
            print(number)
        }
    }
}

fizzBuzz(input: 100)