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

