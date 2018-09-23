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
    func allPossibleFBT(_ N: Int) -> [TreeNode?] {
        if N % 2 == 0 {
            return []
        }
        if N == 1 {
            return [TreeNode(0)]
        }
        var roots = [TreeNode?]()
        for i in stride(from:1, through:N-2, by:2) {
            var leftRoots = allPossibleFBT(i)
            var rightRoots = allPossibleFBT(N-i-2)
            leftRoots.forEach{ leftNode in 
                rightRoots.forEach { rightNode in 
                    var root = TreeNode(0)
                    root.left = leftNode
                    root.right = rightNode
                    roots.append(root)
                }
            }
        }
        return roots
    }
 
}