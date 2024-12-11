import UIKit

var greeting = "Hello, playground"

// Control Flow :-

if 10 > 5 {
    print("10 is greater than 5")
}
else {
    print("10 is less than 5")
}

// Switch case :-
print("------------------------------")

let name = "Suhan"

switch name {
case "Saju":
    print("Name is Saju")
case "Suhan":
    print("Name is Suhan")
default:
    print("I don't know of this person")
}

// Loop and Collections :-

//for in loop -->

//e.g 1
print("------------------------------")

let names = ["Suhan","Sajid","Kazi"]

for name1 in names {
    print("Name : \(name1)")
}

//e.g 2
print("------------------------------")

//stride(from: , to: , by: )

for i in stride(from: 10, to: 0, by: -1) {
    print(i)
}

//e.g 2 -->
let four = stride(from: 1, to: 20, by: 4)
for i in four {
    print(i)
}

print("------------------------------")

//stride(from: , through: , by: )

for i in stride(from: 100, to: 00, by: -10) {
    print(i)
}

//e.g 3
print("----------Table print----------")

for i in 1...10 {
    print(i*7)
}

//e.g 4
print("----------Square Root----------")

for i in 1...10 {
    if i % 2 == 0 {
        print(i)
    }
}

//e.g 5
print("----------Cube Root----------")

for i in 1...10 {
    if i % 3 == 0 {
        print(i)
    }
}

// Enumerated() :-

let name2 = ["Manu","Noor","Ruh","Saj","Kalu","Golu"]

for (index, names2) in name2.enumerated() {
    print("\(index): \(name2)")
}

// Indices :-

let name3 = ["AAA","BBB","CCC","DDD"]
for nameindex in name3.indices {
    if (nameindex<3) {
        print(name3[nameindex])
    }
}
