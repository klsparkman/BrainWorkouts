import UIKit

//Given two non-negative integers, num1 and num2 represented as string, return the sum of num1 and num2 as a string.
//
//You must solve the problem without using any built-in library for handling large integers (such as BigInteger). You must also not convert the inputs to integers directly.
//
//
//
//Example 1:
//
//Input: num1 = "11", num2 = "123"
//Output: "134"
//Example 2:
//
//Input: num1 = "456", num2 = "77"
//Output: "533"
//Example 3:
//
//Input: num1 = "0", num2 = "0"
//Output: "0"
//
//
//Constraints:
//
//1 <= num1.length, num2.length <= 104
//num1 and num2 consist of only digits.
//num1 and num2 don't have any leading zeros except for the zero itself.

//func addStrings(_ num1: String, _ num2: String) -> String {
//    // Turning each number into an array of characters
//    let num1Array: [Character] = Array(num1)
//    let num2Array: [Character] = Array(num2)
//
//    // Accessing a specified index and turning that character into a string
////    let firstString = String(num1Array[1])
////    let secondString = String(num2Array[2])
//
//    let firstStrings = num1Array.map( { String($0) } )
//    let secondStrings = num2Array.map( { String($0) } )
//
//    // Turning each string into an Int
////    let firstInt = Int(firstString)!
////    let secondInt = Int(secondString)!
//
//    let firstInts = firstStrings.map( { Int($0)! } )
//    let secondInts = secondStrings.map( { Int($0)! } )
//
//    var myString = ""
//    var myString2 = ""
//    _ = firstInts.map{ myString = myString + "\($0)" }
//    _ = secondInts.map{ myString2 = myString2 + "\($0)" }
//    let firstNum = Int(myString)!
//    let secondNum = Int(myString2)!
//    print("First Number: \(firstNum)")
//    print("Second Number: \(secondNum)")
//    // Adding the two Ints together
////    let test = firstInt + secondInt
//
////    let test2 = firstInts[firstInts.endIndex - 1] + secondInts[secondInts.endIndex - 1]
//
//    let finalAnswer = firstNum + secondNum
//
//    // Returning the addition of those Ints as a String
//    return String("Final Answer: \(finalAnswer)")
//}
//
//print(addStrings("11", "123"))


func addStrings(_ num1: String, _ num2: String) -> String {
    var myString = ""
    var myString2 = ""
    
    // Turning each number into an array of characters
    let num1Array: [Character] = Array(num1)
    let num2Array: [Character] = Array(num2)
    
    // Accessing a specified index and turning that character into a string
    let firstStrings = num1Array.map( { String($0) } )
    let secondStrings = num2Array.map( { String($0) } )
    
    // Turning each string into an Int
    let firstInts = firstStrings.map( { Int($0)! } )
    let secondInts = secondStrings.map( { Int($0)! } )
    
    _ = firstInts.map{ myString = myString + "\($0)" }
    _ = secondInts.map{ myString2 = myString2 + "\($0)" }
    let firstNum = Int(myString)!
    let secondNum = Int(myString2)!
    
    // Adding the two Ints together
    let finalAnswer = firstNum + secondNum

    return String(finalAnswer)
}

print(addStrings("1234", "743"))
