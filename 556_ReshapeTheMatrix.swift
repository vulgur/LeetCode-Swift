class Solution {
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let numbers = nums.reduce([], +)
        if numbers.count != r*c {
            return nums
        }

        var reshaped = Array(repeating:[Int](), count:r)
        for count in 0..<numbers.count {
            reshaped[count/c].append(numbers[count])
        }
        return reshaped
    }
}