//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

let nibFile = NSNib.Name("MyView")
var topLevelObjects : NSArray?

Bundle.main.loadNibNamed(nibFile, owner:nil, topLevelObjects: &topLevelObjects)
let views = (topLevelObjects as! Array<Any>).filter { $0 is NSView }

// Present the view in Playground
PlaygroundPage.current.liveView = views[0] as! NSView

// Variables can change their values
var myVariable = 42
myVariable = 50

// Constant can't change its value
let myConstant = 42

// To convert interger into String
// explicitly make an instance of String
let text = "My favorite number is "
let number = 123
let favoriteNumber = text + String(number)

// Combining String and Number
let booksToRead = 20
let booksRead = 5
let booksSummary = "I want to read \(booksToRead) books and I read \(booksRead) already."

// Multiple lines String
let booksLeft = booksToRead - booksRead
let longText = """
My New Year resolution is "To read \(booksToRead) books."
I already read \(booksRead) books. \(booksLeft) books to go.
"""

// Arrays and Dictionaries
var shoppingList = ["milk", "bread", "yogurt"]
shoppingList[1] = "banana"

var recipes = ["Pancakes":"Mix milk, eggs, butter, sugar and flour and fry on a pan.",
               "Scambled Eggs": "Whisk eggs and milk and fry on a pan stirring"]

shoppingList.append("flour")
print(shoppingList)

// Create empty array and dictionary using initializer syntax
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

shoppingList = []
recipes = [:]

// Control Flow
// Experimenting with conditionals and loops
// by solving Two Sum problem with Brute Force

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

