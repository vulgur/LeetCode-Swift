class Solution {
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        if nums.isEmpty {
            return nil
        }
        if nums.count == 1 {
            return TreeNode(nums[0])
        }
        var maxInt = 0
        var maxIndex = 0
        for i in 0..<nums.count {
            let value = nums[i]
            if maxInt < value {
                maxInt = value
                maxIndex = i
            }
        }
        var root = TreeNode(maxInt)
        let left = Array<Int>(nums[..<maxIndex])
        let right = Array<Int>(nums[(maxIndex+1)...])
        root.left = constructMaximumBinaryTree(left)
        root.right = constructMaximumBinaryTree(right)
        return root
    }
}