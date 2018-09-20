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
    func pruneTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }
      
        root.left = pruneTree(root.left)
        root.right = pruneTree(root.right)
          
        if root.left == nil && root.right == nil && root.val == 0 {
            return nil
        }
        return root
    }
}