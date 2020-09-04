//  ControlFlow.swift
//
//  Created by Julia Boichentsova on 06/05/2020.
//  Copyright © 2020 Julia Boichentsova. All rights reserved.


import Foundation

// Control Flow
// Experimenting with conditionals and loops
// by solving Two Sum problem with Brute Force

public class ControlFlow {

    public class func conditionals() {
        
        print("---- Control Flow ----")

        /*
         Two Sum Problem
         Given nums = [2, 7, 11, 15], target = 9,
         Because nums[0] + nums[1] = 2 + 7 = 9,
         return [0, 1].
         */

        let nums = [3, 2, 4]
        let count = nums.count - 1
        let target = 6
        var result = [Int]()

        if(count > 0) {
            for i in 0...count {
                
                print ("i: \(i)")
                let val = nums[i]
                let next = i + 1
                
                if (next < nums.count) {
                    for j in next...count {
                        print (j)
                        let val2 = nums[j]

                        if (target - val2 == val) {
                            result.append(i)
                            result.append(j)
                            break
                        }
                    }
                }
                
                print("----")
                
                if(result.count > 0) {
                    break
                }
            }
        }

        print(result)
        print("\n")
    }
    
    public class func optionals() {
        let optionalString: String? = "Hello"
        print(optionalString == nil)
        
        let optionalName: String? = nil
        var greeting = "Hello!"
        
        if let name = optionalName {
            greeting = "Hello, \(name)"
        } else {
            greeting = "Hello, Earth!"
        }
        
        print(greeting)
        
        let nickname: String? = nil
        let fullname = "John Applegreen"
        let informalGreeting = "Hi \(nickname ?? fullname)"
        print(informalGreeting)
        
        let vegetable = "red pepper"
        switch (vegetable) {
        case "cucumber":
            print("Green")
        case "pepper":
            print("Red or Yellow")
        case let x where x.hasSuffix("pepper"):
            print("Is it a spicy \(x)?")
        default:
            print("Make a salad")
        }
        
        // loop through dictionary
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 5, 8],
            "Square": [1, 4, 9, 16, 25],
        ]
        
        var largest = 0
        var kindOfLargest = ""
        for (kind, numbers) in interestingNumbers {
            for number in numbers {
                if (number > largest) {
                    largest = number
                    kindOfLargest = kind
                }
            }
        }
        
        print("Largest number is \(largest) of kind: \(kindOfLargest)")
        
        // While
        
        var n = 100
        while (n < 100) {
            n *= 2
        }
        
        print(n)
        
        var m = 100
        
        repeat {
            m *= 2
        } while (m < 100)
        
        print(m)
        
        // Index in a loop
        
        // ..< to omit upper value
        var total = 0
        for i in 0..<4 {
            total += i
        }
        print(total)
        
        // ... to include upper value
        var total2 = 0
        for i in 0...4 {
            total2 += i
        }
        print(total2)
    }
}
