class Solution {
    func nextGreaterElement(_ n: Int) -> Int {
        if n <= 10 {
            return -1
        }
        
        var num = n
        var digits = [Int]()
        var maxDigit = -1
        var lastDigit = -1
        while num > 0 {
            let digit = num % 10
            lastDigit = digit
            num = num / 10
            digits.append(digit)
            if digit >= maxDigit {
                maxDigit = digit
            } else {
                break
            }
        }

        digits = digits.sorted()
        var index = 0
        while index < digits.count && digits[index] <= lastDigit{
            index += 1
        }
        if index == digits.count {
            return -1
        }
        var tail = digits[index]
        for i in 0..<digits.count {
            num = num * 10
            if i == index {
                continue
            } else {
                tail = tail * 10 + digits[i]
            }
            
        }
        let result = num+tail
        return result > n && result <= Int32.max ? result : -1
    }
}
