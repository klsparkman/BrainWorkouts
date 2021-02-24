import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        //Get a mutable reference to each head of l1 and l2
        var currentL1: ListNode? = l1
        var currentL2: ListNode? = l2
        
        //Create a reference to a node we're going to append on
        var sumList: ListNode? = ListNode(-1)
        
        //Add a reference to it's head
        let head: ListNode? = sumList
        
        //The carry for values > 9
        var carry: Int = 0
        
        //While we haven't fully iterated both lists yet...
        while currentL1 != nil || currentL2 != nil {
            //Get a dummy value of 0 for each list in the niche case that either list is longer than the other
            var value1: Int = 0
            var value2: Int = 0
            
            //Replace with l1's value if it exists
            if let l1 = currentL1 {
                value1 = l1.val
            }
            
            //Same for l2
            if let l2 = currentL2 {
                value2 = l2.val
            }
            
            //Sum up both values and the last carry
            let sum: Int = value1 + value2 + carry
            
            //Get the value < 10
            let value = sum % 10
            
            //Get the carry if above 10
            carry = sum / 10
            
            //Add a node with the new value
            sumList?.next = ListNode(value)
            
            //And move the head reference
            sumList = sumList?.next
            
            //Move l1 and l2 along as well
            currentL1 = currentL1?.next
            currentL2 = currentL2?.next
        }
        
        //If we sill have a carry left
        if carry > 0 {
            //Add a node for the carry, This case could happen on (9 -> 9) + (1) = (0 -> 0 -> 1)
            sumList?.next = ListNode(carry)
        }
        
        //Return head.next to the lose the -1 dummy head
        return head?.next
    }
}
