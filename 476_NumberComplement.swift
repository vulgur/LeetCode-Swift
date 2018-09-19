class Solution {
    func findComplement(_ num: Int) -> Int {
        let numString = String(num, radix: 2)
        let bitCount = numString.count
        let maskString = String(repeating: "1", count: bitCount)
        let maskInt = Int(maskString, radix: 2)
        return num ^ maskInt!
    }
}