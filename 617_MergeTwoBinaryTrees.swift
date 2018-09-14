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
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        if let t1 = t1, let t2 = t2  {
            var mergedNode = TreeNode(t1.val+t2.val)
            mergedNode.left = mergeTrees(t1.left, t2.left)
            mergedNode.right = mergeTrees(t1.right, t2.right)
            return mergedNode
        } else if let t1 = t1 {
            return t1
        } else if let t2 = t2 {
            return t2
        }
        return nil
    }
}