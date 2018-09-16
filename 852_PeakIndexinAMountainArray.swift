class Solution {
    func peakIndexInMountainArray(_ A: [Int]) -> Int {
        var top = 0
        var index = 0
        for i in 0..<A.count {
            if A[i] > top {
                top = A[i]
                index = i
            }
        }
        return index
    }
}