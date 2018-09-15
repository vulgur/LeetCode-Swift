class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var sum = 0
        var i = 0
        let arr = nums.sorted()
        while i<arr.count {
            let a = arr[i]
            let b = arr[i+1]
            sum += min(a,b)
            i += 2
        }
        return sum
    }
}