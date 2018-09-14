class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var list = A
        for i in 0..<list.count {
            list[i] = list[i].reversed()
        }
        for i in 0..<list.count {
            for j in 0..<list[i].count {
                list[i][j] = list[i][j] == 0 ? 1 : 0
            }
        }
        return list
    }
}