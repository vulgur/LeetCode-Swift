class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        var arr = nums
        for i in 0..<arr.count {
            let index = nums[i]
            if arr[index-1] > 0 {
                arr[index-1] = -arr[index-1]
            } else {
                result.append(index)
            }
        }
        return result
    }
}