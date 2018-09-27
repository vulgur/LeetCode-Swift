extension Character {
    var ascii: Int {
        return Int(self.unicodeScalars.first!.value)
    }
}
class Solution {
    func partitionLabels(_ S: String) -> [Int] {
        // if S.isEmpty {
        //     return [0]
        // }
        var map = Array(repeating: -1, count: 26+97)
        for (i, c) in S.enumerated() {
            map[c.ascii] = i
        }
        var result = [Int]()
        var start = 0, end = 0
        for (i, c) in S.enumerated() {
            let right = map[c.ascii]
            end = max(end, right)
            if i == end {
                result.append(end-start+1)
                start = end + 1
            }
        }
        return result
    }
}
