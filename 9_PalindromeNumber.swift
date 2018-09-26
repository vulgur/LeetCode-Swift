class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { 
            return false
        }
        if x < 10 {
            return true
        }
        var reversed = 0
        var num = x
        while num > 0 {
            reversed = reversed * 10 + num % 10
            num = num/10
        }
        return x == reversed
    }
}