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
    func trimBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> TreeNode? {
        guard let node = root else { return nil }
        if node.val >= L && node.val <= R {
            node.left = trimBST(node.left, L, node.val-1)
            node.right = trimBST(node.right, node.val+1, R)
            return node
        } else if node.val > R {
            return trimBST(node.left, L, R)
        } else {
            return trimBST(node.right, L, R)
        }
    }
}