//: [Previous](@previous)

import Foundation

func challenge18(number: Int, power: Int) -> Int {
    
    // guard is similar to if let EXCEPT that the guard statement MUST GET OUT OF THE BLOCK OF CODE IT'S CURRENTLY IN whereas if lets just continue
    // Furthermore, it keeps the code that deals with a broken conditional  NEAR that conditional, as opposed to the end of the “true” clause of an “if” statement.
    // guard is like a 'guard' standing at the door waiting for the people (values) to come along. If the wrong people (or unwanted values) show up, the guard will make sure nothing goes wrong (prevent a program crash)
    // in this case, the guard is making sure number and his friend, power, are greater than 0 and if they aren't, they should go away -
    // only when number and his friend power are greater than 0, they are let through so the rest of the work (function) can be finished
    
    // guard and if let are similiar but serve very distinct purposes
    // guard takes care of the else case early on whereas if let takes care of it at the end.
    // they are nearly the same functionally except for the fact that guard must exit the current scope by calling return whereas if let can return or not
    // if your if let statement has any returns in its else statement, guard should be used instead
    
    guard number > 0, power > 0 else { return 0 }
    
    // if the guard lets number and power through, create a returnValue variable set equal to number - number needs to be kept constant to update the increasing returnValue
    var returnValue = number
    
    // power will be used as the number of times the loop will multiply the base number by itself
    
    // use 1 instead of 0 in the loop because the first time the loop runs to multiply the returnValue by number, it uses the number TWICE, for ex; 4^3,
    
    // for loop example
    // inputs: number = 4, power = 3
    
    // first loop = 1
    // returnValue = returnValue * number
    //           4 = 4 * 4
    // returnValue = 16
    
    // second loop = 2
    // returnValue = returnValue * number
    //          16 = 16 * 4
    // returnValue = 64
    
    // 2 < power
    // 2 < 3 = TRUE
    // end loop
    
    for _ in 1..<power {
        returnValue *= number
    }
    return returnValue
}
pow(0, 0)
assert(challenge18(number: 0, power: 0) == 0, "Challenge 18 failed")
assert(challenge18(number: 4, power: 3) == 64, "Challenge 18 failed")
assert(challenge18(number: 2, power: 8) == 256, "Challenge 18 failed")

// recursive solution
// difference between recursive vs iterative functions: recursive version is - a little shorter,
//     - a little clear & closer to the mathematical definition,
//     - a little slower
func challenge18b(number: Int, power: Int) -> Int {
    // if number and power inputs are greater than 0, execute the rest of the function, else exit the function by returning 0
    // guard puts more emphasis on the error condition whereas if let puts it more on the positive case, if the optional value can be bound to the let constant
    guard number > 0, power > 0 else { return 0 }
    
    // a case for which the answer is known and can be expressed without recursion  is called a BASE CASE
    // this BASE CASE is what makes the recursive function finite and brings the recursive calls to an end, in turn allowing all the functions that are called to return one by one to the very first
    if power == 1 { return number }
    // general case
    // each successive recursion call should bring you closer to a situation in which the answer is known
    return number * challenge18b(number: number, power: power - 1)
}

assert(challenge18b(number: 0, power: 0) == 0, "Challenge 18 failed")
assert(challenge18b(number: 4, power: 3) == 64, "Challenge 18 failed")
assert(challenge18b(number: 2, power: 8) == 256, "Challenge 18 failed")
