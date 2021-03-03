

//Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
//
//Follow up: The overall run time complexity should be O(log (m+n)).
//
//
//
//Example 1:
//
//Input: nums1 = [1,3], nums2 = [2]
//Output: 2.00000
//Explanation: merged array = [1,2,3] and median is 2.
//Example 2:
//
//Input: nums1 = [1,2], nums2 = [3,4]
//Output: 2.50000
//Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
//Example 3:
//
//Input: nums1 = [0,0], nums2 = [0,0]
//Output: 0.00000
//Example 4:
//
//Input: nums1 = [], nums2 = [1]
//Output: 1.00000
//Example 5:
//
//Input: nums1 = [2], nums2 = []
//Output: 2.00000

import UIKit

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    
    let sorted = (nums1 + nums2).sorted()
    if sorted.count % 2 == 0 {
        return Double((sorted[(sorted.count / 2)] + sorted[(sorted.count / 2) - 1])) / 2
    } else {
        return Double(sorted[(sorted.count - 1) / 2])
    }
}

findMedianSortedArrays([1, 2], [3, 4])
