class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var arr = A
        var nextSwapIndex = 0
        for i in 0..<arr.count {
            if arr[i]%2==0 {
                if i != nextSwapIndex {
                    let tmp = arr[nextSwapIndex]
                    arr[nextSwapIndex] = arr[i]
                    arr[i] = tmp
                    
                }
                nextSwapIndex += 1
            }
        }
        return arr
    }
}