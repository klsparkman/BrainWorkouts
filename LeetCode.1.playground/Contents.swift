import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int : Int]()
    for index in 0..<nums.count {
        let value = nums[index]
        let remainder = target - value
        if let anotherIndex = dict[remainder] {
            return [anotherIndex, index]
        }
        dict[value] = index
    }
    return [-1, -1]
}
