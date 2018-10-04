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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        guard let head = head else {
            return nil
        }
        var newHead = ListNode(-1)
        newHead.next = head
        var prev = newHead
        while let node = prev.next {
            if node.val == val {
                prev.next = node.next
            } else {
                prev = node
            }
        }
        return newHead.next
    }
 