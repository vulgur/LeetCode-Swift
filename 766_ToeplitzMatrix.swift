class Solution {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        if matrix.isEmpty { return true }
        let rows = matrix.count
        let cols = matrix[0].count
        var row = matrix[0]
        for i in 1..<rows {
            row.insert(matrix[i][0], at: 0)
        }
        for i in 1..<rows {
            var shiftedRow = row.dropLast()
            row = Array(shiftedRow)
            var slicedRow = shiftedRow.suffix(cols)
            if matrix[i] != Array(slicedRow) {
                return false
            }
            
        }
        return true
    }
}