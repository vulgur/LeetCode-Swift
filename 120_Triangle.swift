class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        if triangle.count == 1 {
            return triangle[0][0]
        }
        var lastLine = triangle.last!
        var sums = Array(repeating: 0, count:triangle.count-1)
        for i in stride(from: triangle.count-2, through:0, by:-1) {
            for j in 0..<triangle[i].count {
                sums[j] = min(lastLine[j], lastLine[j+1]) + triangle[i][j]
            }
            lastLine = sums
        }
        return sums[0]
    }
}
