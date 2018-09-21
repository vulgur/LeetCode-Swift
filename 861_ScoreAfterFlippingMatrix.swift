class Solution {
    func matrixScore(_ A: [[Int]]) -> Int {
        var matrix = toggleMatrixRows(A)
        matrix = toggleMatrixColumns(matrix)
        var total = 0
        for row in matrix {
            total += valueFromArray(row)
        }
        return total
    }
    
    func toggleMatrixRows(_ A: [[Int]]) -> [[Int]] {
        var matrix = A
        for i in 0..<A.count {
            if A[i][0] == 0 {
                matrix[i] = toggledArray(A[i])
            }
        }
        return matrix
    }
    
    func toggleMatrixColumns(_ A: [[Int]]) -> [[Int]] {
        var matrix = A
        let rows = A.count
        let cols = A[0].count
        for i in 1..<cols {
            var countOne = 0
            var countZero = 0
            for j in 0..<rows {
                if A[j][i] == 1 {
                    countOne += 1
                } else {
                    countZero += 1
                }
            }
            if countOne < countZero {
                for j in 0..<rows {
                    matrix[j][i] = matrix[j][i] ^ 1
                }
            }
        }
        return matrix
    }
    
    func toggledArray(_ arr: [Int]) -> [Int] {
        var toggledArray = [Int]()
        for i in arr {
            toggledArray.append( i ^ 1)
        }
        return toggledArray
    }
    
    func valueFromArray(_ arr:[Int]) -> Int {
        var str = ""
        for i in arr {
            str = str + String(i)
        }
        let value = Int(str, radix:2)
        return value!
    } 
}
