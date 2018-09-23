class Solution {
    func binaryGap(_ N: Int) -> Int {
        var maxGap = 0
        var count = 0
        var start = 0
        var foundFirstOne = false
        var num = N
        while num>0 {
            if num&1 == 1 {
                if !foundFirstOne {
                    foundFirstOne = true
                } else {
                    maxGap = max(maxGap, count-start)
                }
                start = count
            }
            count += 1
            num = num >> 1
        }
        return maxGap
    }
}