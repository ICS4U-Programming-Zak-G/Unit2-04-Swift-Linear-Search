//
//  LinearSearch.swift
//
//  Created by Zak Goneau
//  Created on 2025-03-21
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  Generates 10 random integers and it will do a linear scan to find a number within.

// Import library
import Foundation

// Define main function
func main() {

    // Define constants
    let MAX_SIZE = 10
    let MAX = 99
    let MIN = 1

    var userInput: String = ""

    // Introduce program to user
    print("This program generates a line with 10 random integers between 0-100.\n"
        + "It then does a linear search based on user input to find the index of a number.\n")

    // Loop until user quits
    repeat {

        // Initialize variables
        var arrayNum: [Int] = []
        var randNum = 0

        // Populate array with 10 random numbers between 0-100
        for _ in 0..<MAX_SIZE {
            randNum = Int.random(in: MIN...MAX)
            arrayNum.append(randNum)
        }

        // Sort array
        arrayNum.sort()

        // Print array and get user input
        print("\(arrayNum) \n Number: ")

        guard let input = readLine() else {

            // Tell user invalid input if failed conversion
            print("Invalid input. It must be a number or q.")

            // Exit function
            continue
        }

        // Assign input to user input
        userInput = input

        // Check if input is q
        if (userInput == "q") {
            break
        }

        // Try converting user input to an integer
        guard let userNum = Int(userInput) else {

            // Tell user invalid input if failed conversion
            print("Invalid input. It must be a number input.")

            // Exit function
            continue
        }

        // Initialize index value
        var indexValue = -1

        // Loop through array to find number
        for counter in 0..<MAX_SIZE {
            // Check if number at index is inputted number
            if (userNum == arrayNum[counter]) {
                // Get index number and break
                indexValue = counter
                break
            }
        }

        // Check if index value changed and print results
        if (indexValue == -1) {
            print("\(userNum) was not found in the array")
        } else {
            print("The number \(userNum) is first found at index \(indexValue)")
        }


    } while (userInput != "q")
    // Thank user
    print("Thank you for playing!")
}

// Call main
main()