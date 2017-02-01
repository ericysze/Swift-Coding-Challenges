//: [Previous](@previous)

import Foundation

// inefficient bubbleSort algorithm because double for loop will force the function to keep running until it has looped through all incrementations, even if it is sorted.
// use while loop and a flag to break out of the function when it has checked to make sure the array is sorted then break.
func bubbleSort(arr: inout [Int]) -> [Int] {
    
    for _ in 0..<arr.count {
        for i in 0..<arr.count {
            let first = arr[i]
            
            if i != arr.count - 1 {
                let second = arr[i+1]
                if first > second {
                    swap(&arr[i], &arr[i+1])
                }
            }
        }
    }
    
    return arr
}
var array = [42, 12, 88, 62, 63, 56, 1, 77, 88, 97, 97, 20, 45, 91, 62, 2, 15, 31, 59, 5]
bubbleSort(arr: &array)




// efficient bubbleSort2
func bubbleSort2(arr: inout [Int]) -> [Int] {
    // while true because you need to assume the array is unsorted
    // utilize a swapped boolean break the loop once the array is sorted
    while true {
        // set swapped to false, because if it passes into the true if statement, it will break out of the function meaning the array is sorted, but it will change to true if two elements need to be swapped in the for loop
        var sorted = false
        // for loop starts at 1 and checks the element to the left of it i - 1 because when it reaches the last element <arr.count, it wont crash if you used i + 1, where it would be out of bounds
        for i in 1..<arr.count {
            if arr[i] < arr[i - 1] {
                swap(&arr[i], &arr[i - 1])
                sorted = true
            }
        }
        if !sorted {
            break
        }
    }
    return arr
}

var unsortedArr = [10, 9, 1, 8, 4, 7, 5, 6, 3, 2]
bubbleSort2(arr: &unsortedArr)
