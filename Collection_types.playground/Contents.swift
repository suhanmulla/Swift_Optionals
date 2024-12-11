import UIKit

var greeting = "Hello, playground"

//Collection types :-

// 1.Arrays :-

var myArr = [String] ()       //alloc init --> ()       //Empty array

myArr = ["Suhan", "Jameer", "Mulla"]
print(myArr)

// Working of String :-

//e.g 1 -->
let name = "Suhan"
let age = 22

let s1 = name + " is " + String(age)      //Int to String
print(s1)

let s2 = "\(name) is \(age)"
print(s2)

//e.g 2 -->
let firstName = "Suhan"
let middleName = "Jameer"
let lastName = "Mulla"

let fullName = lastName + " " + firstName + " " + middleName

print(fullName)

// Initialize an Array :-

let stars : [String] = ["Yup", "Yo", "Yiee"]
print(stars)

print(stars[0])
print(stars[1])

// Indices :- (work like array)

//let names = ["AAA","BBB","CCC","DDD"]
//
//for nameIndex in name.indices {
//    if (nameIndex < 3) {
//        print(names[nameIndex])
//    }
//}

// 2.Dictionary :-

let ages = ["Suhan" : 22, "Saju" : 23]

print(ages["Suhan"])
print(ages["Suhan"]!)

if let arrayAges = ages["Saju"] {
    print("Saju is \(arrayAges) year's old")
}
else {
    print("")
}

// 3.Set :- set is similar to array

var colors : Set<String> = ["Blue","Pink","Blue","Yellow","Orange"]
print(colors)

colors.insert("Black")
print(colors)

colors.remove("Orange")
print(colors)

print(colors.contains("Black"))
print(colors.contains("Orange"))

// Tuple :-

let myName = ("Suhan", "Saju")
print(myName.0)
print(myName.1)

let (first,last) = ("Mummy", "Pappa")
print(first)

let (first1,_) = ("Apple","Mango")
print(first1)

