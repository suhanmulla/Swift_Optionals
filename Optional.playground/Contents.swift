import UIKit

var greeting = "Hello, playground"

//Optional :-

var v1 : Int?
var v2 : String?

if v2 != nil {
    print("String is not Nil")
}
else {
    print("String is Nil")
}

//print(v1)
//print(v2)

// 1. Using Force Unwrapping :-

var name : String?
name = "Suhan"

print("My name is -> \(name!)")

// 2. Using Nil-Coalescing ?? :-

// e.g 1) -->
var fruit : String?

fruit = "Dragenfruit"

print("My favourite fruit is -> \(fruit ?? "Kiwi")")

// e.g 2) -->
var flower : String?

//flower = "Rose"

print("My favourite flower is -> \(flower ?? "Lili")")

// 3. Using if-let :- it is valid only on local scope

var number : Int?

number = 09

if let numFound = number {
    print("Number is -> \(numFound)")
}
else {
    //Handel Nil Case
    print("Nil")
}

// 4. Using guard-let :-

//e.g 1 -->
var num : Int?
num = 123

guard let dummyNum = num else {
    throw NSError()
}
print(dummyNum)

//e.g 2 -->
var car : String?
car = "Fortuner"

func carSections() {
    guard let newCar = car else {
        return
    }
    print("My Favourite Car is -> \(newCar)")
}

carSections()

// 5.if-else statement :-

//e.g 1 -->
var value : Int?

if value != nil {
    print("It has \(value!) value")
}
else {
    print("Doesn't contain any value")
}

//e.g 2 -->
var value1 : Int?
value1 = 77

if value1 != nil {
    print("It has \(value1!) value")
}
else {
    print("Doesn't contain any value")
}

// Otional Example :-

class Person {
    var firstName : String
    var middleName : String?
    var lastName : String?
    
    init(firstName:String, middleName:String?, lastName: String?) {
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
    }
}

let person = Person(firstName: "Suhan", middleName: "Jameer", lastName: nil)
print(person.firstName)
print(person.middleName)
print(person.lastName)

// 1.Force Unwrapping :-
print(person.middleName!)

// 2.Nil-Coalescing :-
print(person.lastName ?? "Saju")

// 3.Optional binding (if-let) :-
if let lastField = person.lastName {
    print("My last name is \(lastField)")
}
else {
    print("Nil")
}

// 4.Optional binding (guard-let) :-
func getMiddleName() {
    guard let midField = person.middleName else {
        return
    }
    print("My Dad name is \(midField)")
}

getMiddleName()

// Example of if-let & guard let :-
class Address {
    var street : String?
    var city : String?
    var state : String?
    var zipCode : Int?
    
    init(street : String?, city : String?, state : String?, zipCode : Int?) {
        self.street = street
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
}

class Student {
    var name : String
    var rollNumber : Int?
    var subject : String?
    var address : Address?
    
    init (name : String, rollNumber : Int?, subject : String?, address : Address?) {
        self.name = name
        self.rollNumber = rollNumber
        self.subject = subject
        self.address = address
    }
}

let addr = Address(street: "1938/DA", city: "Sangli", state: nil, zipCode: 415303)

let student = Student(name: "Mulla Suhan", rollNumber: 36, subject: "IOS Development", address: addr)
print(student.name)
print(student.rollNumber)
print(student.subject)

// if-let
func getAddressDataFromIfLet() {
    
    if let address1 = student.address {
        
        if let street1 = address1.street {
            print("If let -- Street is \(street1)")
        }
        else {
            print("Street is Nil")
        }
        
        if let city1 = address1.city {
            print("if let -- City is \(city1)")
        }
        else {
            print("City is Nil")
        }
        
        if let state1 = address1.state {
            print("If let -- State is \(state1)")
        }
        else {
            print("State is Nil")
        }
        
        if let zipCode1 = address1.zipCode {
            print("If let -- ZipCode is \(zipCode1)")
        }
        else {
            print("ZipCode is Nil")
        }
            
    }
}

getAddressDataFromIfLet()

//guard let
func getAddressDataFromGuardLet() {
    
    guard let address2 = student.address else {
        return
    }
    
    guard let street2 = address2.street else {
        return
    }
    print("guard let -- Street is \(street2)")
    
    guard let city2 = address2.city else {
        return
    }
    print("guard let -- City is \(city2)")
    
    guard let state2 = address2.state else {
        return
    }
    print("guard let -- State is \(state2)")
    
    guard let zipCode2 = address2.zipCode else {
        return
    }
    print("guard let -- Zipcode is \(zipCode2)")

}

getAddressDataFromGuardLet()

// practice :-

//Force unwrapping :-
var mainstr : String?                      //output --> nil
mainstr = "Yup"

print(mainstr)

// (? optional) & (! unwrap force) :-
if mainstr != nil {
    print("\(mainstr!)")
}
else {
    print("It is nil")
}
