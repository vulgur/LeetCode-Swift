class Solution {
    func findRelativeRanks(_ nums: [Int]) -> [String] {
        guard nums.count > 0 else {
            return []
        }
        var index = [Int:Int]()
        for i in 0..<nums.count {
            index[nums[i]] = i
        }
        let sorted = nums.sorted(by: >)
        var rank = [String](repeating: "", count: nums.count)
        for i in 0..<sorted.count {
            if let idx = index[sorted[i]] {
                if i == 0 {
                    rank[idx] = "Gold Medal" 
                } else if i == 1 {
                    rank[idx] = "Silver Medal"
                } else if i == 2 {
                    rank[idx] = "Bronze Medal"
                } else {
                    rank[idx] = String(i+1)
                }
            }

        }
        return rank
    }
}
