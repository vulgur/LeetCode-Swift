class Solution {
    func countBits(_ num: Int) -> [Int] {
        if num == 0 {
            return [0]
        }
        var results = [Int]()
        results.append(0)
        for n in 1...num {
            if n%2 == 1 {
                results.append(results[n-1]+1)
            } else {
                results.append(results[n/2])
            }
        }
        return results
    }
}
