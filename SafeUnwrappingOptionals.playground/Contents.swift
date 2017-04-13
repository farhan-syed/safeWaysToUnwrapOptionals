//: Playground - noun: a place where people can play

import UIKit

var str: String? = "Some String"

// We will get an crash when str is nil.
print(str!)


// if else
if str != nil {
    // You know 100% that it has a value, therefore you could use !
    print(str!)
} else {
    print("No Value")
}

// if let with new variable.
if let newString = str {
    print(newString)
} else {
    print("No value")
}

// if let with same variable.
if let str = str {
    print(str)
} else {
    print("No value")
}

// use the ?? operator
print(str ?? "No Value")

// using guard with different constant name
func guardWithDifferentConstant() {
    guard let newStr = str else {
        print("No Value")
        return
    }
    print(newStr)
}

guardWithDifferentConstant()

// using guard with same constant name
func guardWithSameConstant() {
    guard let str = str else {
        print("No Value")
        return
    }
    print(str)
}

guardWithSameConstant()