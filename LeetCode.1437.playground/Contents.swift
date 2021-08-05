

import UIKit


// Given an array nums of 0s and 1s and an integer k, return True if all 1's are at least k places away from each other, otherwise return False.

//func kLengthApart(_ nums: [Int], _ k: Int) -> Bool {
//    var length = 0
//    let end = nums.endIndex
//
//    for i in nums {
//        if i != 1 {
//            length += 1
//        } else {
//
//            if i == end {
//                if length.count < 2 {
//                    return false
//                }
//            }
//        }
//    }
//
//    return true
//
//}

//func kLengthApart(nums: [Int], k: Int) -> Bool {
//
//    var length = 0
//    let endIndex = nums.endIndex
//
//    for num in nums {
//        if num == 1 {
//            print("We hit a 1")
//            if nums[nums.endIndex] && length != k {
//                return false
//            } else {
//                length = 0
//            }
//        } else {
//            length += 1
//            print("Length count: \(length)")
//
//        }
//    }
//    print("Total length: \(length)")
//    return true
//}
//
//kLengthApart(nums: [1, 0, 0, 1, 0, 1], k: 2)

func kLengthApart(_ nums: [Int],_ k: Int) -> Bool {
    
    var count = k
    
    for num in nums {
        if num == 1 {
            if count < k {
                return false
            } else {
                count = 0
            }
        } else {
            count += 1
        }
    }
    return true
}

//kLengthApart(nums: [1, 0, 0, 1, 0, 0, 1], k: 2)
