class Solution {
    func smallestRangeI(_ A: [Int], _ K: Int) -> Int {
        var sortedA = A.sorted()
        var B = [Int]()
        let start = sortedA[0] + K
        let end = sortedA[A.count-1] - K
        if start > end {
            return 0
        } else {
            return end - start
        }
    }
}