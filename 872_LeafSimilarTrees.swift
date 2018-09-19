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
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        let leaves1 = leaves(of: root1)
        let leaves2 = leaves(of: root2)
        return leaves1 == leaves2
    }
    
    func leaves(of root: TreeNode?) -> [Int] {
        var results = [Int]()
        guard let root = root else {
            return []
        }
        if root.left == nil && root.right == nil {
            return [root.val]
        }
        if root.left != nil{
            results.append(contentsOf: leaves(of: root.left))
        }
        if root.right != nil {
            results.append(contentsOf: leaves(of: root.right))
        }
        return results
    }
}