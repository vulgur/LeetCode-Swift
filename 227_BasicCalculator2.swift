class Solution {
    func calculate(_ s: String) -> Int {
        var stack = [Int]()
        let expression = s+"+"
        var lastOp: Character = "+"
        var num = 0
        for item in expression {
            if let digit = Int(String(item)) {
                num = num * 10 + digit
            } else if item == " " {
                continue
            } else {
                if lastOp == "-" || lastOp == "+" {
                    stack.append((lastOp == "-" ? -1 : 1) * num)
                } else {
                    let lastNum = stack.popLast()!
                    stack.append(lastOp == "/" ? lastNum/num : lastNum*num)
                }
                num = 0
                lastOp = item
            }
        }
        return stack.reduce(0, +)
    }
}
