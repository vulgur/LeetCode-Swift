class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var count = 0
        S.forEach{ item in 
            if J.contains(item) {
                count += 1
            }
        }
        return count
    }
}