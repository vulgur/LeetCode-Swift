class Solution {
    func isMonotonic(_ A: [Int]) -> Bool {
        if A.count <= 1 {
            return true
        }

        let increased = A[A.count-1] >= A[0]
        for i in 1..<A.count {
            if A[i] == A[i-1] {
                continue
            }
            let isIncreasing = A[i] >= A[i-1]
            if isIncreasing != increased {
                return false
            }
        }
        return true
    }
}
