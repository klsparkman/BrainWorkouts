import UIKit

// Write a function that accepts the string and remove all the duplicate characters in the string
// Hello -> Helo

func removeDupChar(str: String) -> String {
    
    var arrOfChar: [Character] = []
    
    for char in str {
        if arrOfChar.contains(char) {
            print("Here is a duplicate!")
        } else {
            arrOfChar.append(char)
        }
    }
    return String(arrOfChar)
}

print(removeDupChar(str: "Hello"))
