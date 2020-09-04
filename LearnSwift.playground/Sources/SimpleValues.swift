//  SimpleValues.swift
//
//  Created by Julia Boichentsova on 04/05/2020.
//  Copyright © 2020 Julia Boichentsova. All rights reserved.

import Foundation

public class SimpleValues {
    
    public class func samples() {
            print("---- Simple Values ----")

            // Variables can change their values
            var myVariable = 42
            myVariable = 50
            print("myVariable: \(myVariable)")

            // Constant can't change its value
            let myConstant = 42
            print("myConstant: \(myConstant)")

            // To convert interger into String
            // explicitly make an instance of String
            let text = "My favorite number is "
            let number = 123
            let favoriteNumber = text + String(number)
            print("favoriteNumber: \(favoriteNumber)")

            // Combining String and Number
            let booksToRead = 20
            let booksRead = 5
            let booksSummary = "I want to read \(booksToRead) books and I read \(booksRead) already."
            print(booksSummary)

            // Multiple lines String
            let booksLeft = booksToRead - booksRead
            let longText = """
            My New Year resolution is "To read \(booksToRead) books."
            I already read \(booksRead) books. \(booksLeft) books to go.
            """
            print(longText)

            // Arrays and Dictionaries
            var shoppingList = ["milk", "bread", "yogurt"]
            shoppingList[1] = "banana"

            var recipes = ["Pancakes":"Mix milk, eggs, butter, sugar and flour and fry on a pan.",
                           "Scambled Eggs": "Whisk eggs and milk and fry on a pan stirring"]

            shoppingList.append("flour")
            print(shoppingList)
            print(recipes)

            // Create empty array and dictionary using initializer syntax
            let emptyArray = [String]()
            let emptyDictionary = [String: Float]()
            
            print("emptyArray: \(emptyArray)")
            print("emptyDictionary: \(emptyDictionary)")

            shoppingList = []
            recipes = [:]
        print("\n")
    }

}
