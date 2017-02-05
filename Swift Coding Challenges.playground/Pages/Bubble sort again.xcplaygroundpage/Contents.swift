//: [Previous](@previous)

import Foundation

// bubble sort is a sorting algorithm that rearranges numbers one at a time, whether in ascending or descending order

// bubble sort's functionality:
// 1. start with a loop to loop over each element
// 2. if the first element is greater than the second element, switch their positions, there are 3 ways:
//      a. using a temp variable
//      b. using swift's built-in swap function
//      c. using arithmetic:  10 - 2 = 8
//                             2 + 8 = 10
//                            10 - 8 = 2
// 3. problem w/ function so far: this for loop only runs through the array once; only carrying the highest number to the last index. Therefore, it needs to keep looping over the array, carrying each number to the right position and when the number of loops needed to complete a certain task is unknown, a while loop should be used. (A while loop performs a set of statements until a condition becomes false) Finally, for this solution, wrap the for loop inside a while loop with the condition set to true, therefore allowing the enclosed for loop to carry each number into the right positions.
//    With this, a new problem arises; yes, the while loop set to true will cause the function to run infinitely because there are currently no breaks to stop it and the program can't tell whether the array is sorted.
// 4. Here is where it gets a little tricky, after the while loop and before the for loop, declare a variable called sorted and set it to true. Why here? the while loop needs to keep the for loop running until sorting is completed and the for loop doesn't know whether or not the array is sorted yet, therefore, for the time being, the array should be assumed as sorted UNTIL the for loop's if statement's condition is true and finds an element that is in fact greater than the next, meaning that the array is unsorted. When the array is known to be unsorted, inside the if statement, set sorted to false.
// 5. There is still no break statement for the while loop. Create a break statement after the for loop. Why after the for loop? Until the for loop's if statement has checked each element in the array if it's in the right place and there is no element greater than the next, sorted will never get set to false, leaving sorted as true. the for loop will then end and run "if sorted, break", causing the while loop to break and return the sorted arr.

func bubbleSort(arr: inout [Int]) -> [Int] {
    while true {
        var sorted = true
        for i in 1..<arr.count {
            if arr[i - 1] > arr[i] {
                sorted = false
                swap(&arr[i - 1], &arr[i])
            }
        }
        if sorted {
            break
        }
    }
    return arr
}

var unsortedArr = [10, 2, 8, 7, 3, 5, 9, 1, 4, 6]
bubbleSort(arr: &unsortedArr)

