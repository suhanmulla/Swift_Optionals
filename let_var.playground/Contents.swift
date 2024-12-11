import UIKit

var greeting = "Hello, playground"

//Variable declaration :-
var va = 123
var vb : Float
vb = 3.14
print(vb)

//String declaration using let & var keyword :-

let str = "Hello Suhan"
print(str)

var str1 = "Hello"
print(str1)
str1 = "World"
print(str1)

//Declaring a Empty-String :-

let empstr = ""

if empstr.isEmpty {
    print("String is Empty")
}
else {
    print("String is not Empty")
}

//Compare two String :-

//e.g 1)
var v1 = "Suhan"
var v2 = "Suhan"

if v1 == v2 {
    print("Equal")
}
else {
    print("Not Equal")
}

//String Concatination / String interpulation :-

//e.g 1)
let l1 = "Hello"
let l2 = "World"

if l1 == l2 {
    print("\(l1) and \(l2) is Equal")
}
else {
    print("\(l1) and \(l2) is not Equal")
}

//e.g 2)
var cv1 = "Godzilla"
var cv2 = 1000.00

print("Value of \(cv1) is more than \(cv2) millions")
