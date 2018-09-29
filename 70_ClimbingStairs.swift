class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n == 1 {
            return 1
        }
        if n == 2 {
            return 2
        }
        var arr = [Int](repeating:0, count:n+1)
        arr[1] = 1
        arr[2] = 2
        return climb(n, &arr)
    }
    
    func climb( _ n: Int, _ arr: inout [Int]) -> Int {
        if n >= arr.count {
            return 0
        }
        if arr[n] > 0{
            return arr[n]
        } else {
            arr[n] = climb(n-1, &arr) + climb(n-2, &arr)
        }
        return arr[n]
    }
}
