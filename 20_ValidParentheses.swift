class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        for bracket in s {
            stack.append(bracket)
            if bracket == ")" || bracket == "}" || bracket == "]" {
                let right = stack.popLast()!
                if let left = stack.popLast() {
                    if (left == "(" && right == ")") ||
                    (left == "{" && right == "}") || 
                    (left == "[" && right == "]") {
                        continue
                    } else {
                        return false
                    }
                } else {
                    return false
                }
            }
        }
        if stack.isEmpty {
            return true
        } else {
            return false
        }
    }
}
