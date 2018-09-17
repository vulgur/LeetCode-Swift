class Solution {
    func transpose(_ A: [[Int]]) -> [[Int]] {
        var transposed = [[Int]]()
        let rows = A.count
        let cols = A[0].count
        for i in 0..<cols {
            var arr = [Int]()
            for j in 0..<rows {
                arr.append(A[j][i])
            }
            transposed.append(arr)
        }
        return transposed
    }
