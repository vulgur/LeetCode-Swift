/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let node = root else {
            return nil
        }
        
        if node.val == val {
            return node
        } else if node.val < val {
            return searchBST(node.right, val)
        } else {
            return searchBST(node.left, val)
        }
    }
}