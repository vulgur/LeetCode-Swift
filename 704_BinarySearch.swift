class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count-1
        while left <= right {
            let index = (right+left)/2
            let mid = nums[index]
            
            if mid == target {
                return index
            } else if mid > target {
                right = index - 1
            } else {
                left = index + 1
            }
        }
        return -1
    }
}
