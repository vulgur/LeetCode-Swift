class Solution {
    func distributeCandies(_ candies: [Int]) -> Int {
        return min(Set(candies).count, candies.count/2)
    }
}