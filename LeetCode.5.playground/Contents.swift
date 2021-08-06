import UIKit




func longestPalindrome(_ s: String) -> String {
    if (s.count == 0) {return ""}
    if (s.count == 1) {return s}
    
    var startIndex = 0
    var endIndex = s.count - 1
    
    let stringArray = Array(s)
    var pStart = 0
    var pEnd = endIndex
    var size = 0
    
    while startIndex < endIndex {
        if stringArray[startIndex] == stringArray[endIndex] {
            if endIndex - startIndex > size {
                size = endIndex - startIndex
                pStart = startIndex
                pEnd = endIndex
            }
            startIndex += 1
            endIndex -= 1
        } else {
            startIndex += 1
        }
    }
    
    if startIndex == endIndex {
        startIndex = 0
        if stringArray[startIndex] == stringArray[endIndex] {
            if endIndex - startIndex > size {
                size = endIndex - startIndex
                pStart = startIndex
                pEnd = endIndex
            }
            startIndex += 1
            endIndex -= 1
        } else {
            endIndex -= 1
        }
    }
    
    return String(stringArray[pStart...pEnd])
}

print(longestPalindrome("racecarz"))
print(longestPalindrome("razcecar"))
print(longestPalindrome("racecar"))
print(longestPalindrome("zracecar"))

































//if (s.count == 0) {return ""}
//if (s.count == 1) {return s}
//
//var start = 0
//var end = start
//let stringArray = Array(s)
//var max = 0
//
//for i in 0..<s.count {
//    var left = i
//    var right = s.count - 1
//    var tempStart = left
//    var tempEnd = right
//
//    while (left < right) {
//        if (stringArray[left] == stringArray[right]) {
//            if ((right - left) > max) {
//                max = (right - left)
//                tempStart = left
//                tempEnd = right
//            }
//            left += 1
//            right -= 1
//        } else {
//            left = i
//            right = tempEnd - 1
//            tempStart = left
//            tempEnd = right
//            max = 0
//        }
//    }
//    if ((tempEnd - tempStart) > (end - start)) {
//        end = tempEnd
//        start = tempStart
//    }
//}
//return (String(stringArray[start...end]).count > 1) ? String(stringArray[start...end]) : String(s.first!)
