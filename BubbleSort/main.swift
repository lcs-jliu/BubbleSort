//
//  main.swift
//  BubbleSort
//
//  Created by Liu, Jason on 2020-05-02.
//  Copyright © 2020 Liu Jason. All rights reserved.
//

import Foundation

// Create an empty array
var dataSet: [Int] = []

// Populate an array to sort
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

// Print the unsorted array
print("Unsorted:")
print(dataSet)

// Loop through the entire arrary "n" times
// (However many times there are elemetns in the array)

for i in 0..<dataSet.count {
    
    // One pass through the array to float the highest number to the end
    for j in 0..<dataSet.count - 1 {
        
        // Compare left value to right value
        if dataSet[j] > dataSet[j + 1] {
            // Swap values when left value is more than right value
            let temporaryValue = dataSet[j] // Set aside the left value
            dataSet[j] = dataSet[j+1]       // Replace left with right
            dataSet[j+1] = temporaryValue   // Replace right with temporary value
            
        }
    }

    // Print the array after n pass
    print("Array after pass \(i + 1):")
    print(dataSet)
}
