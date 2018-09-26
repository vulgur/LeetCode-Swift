/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1?.val == 0 && l1?.next == nil { return l2 }
        if l2?.val == 0 && l2?.next == nil { return l1 }
        var node1 = l1
        var node2 = l2
        var startNode: ListNode?
        var lastNode: ListNode?
        var carry = 0
        while node1 != nil || node2 != nil || carry != 0 {
            var newVal = carry
            if let n1 = node1 {
                newVal += n1.val
                node1 = node1?.next
            }
            if let n2 = node2 {
                newVal += n2.val
                node2 = node2?.next
            }

            carry = newVal/10
            newVal = newVal%10
            var newNode = ListNode(newVal)
            if startNode == nil {
                startNode = newNode
            }
            if let last = lastNode {
                last.next = newNode
            }
            lastNode = newNode

        }
        return startNode
    }
}