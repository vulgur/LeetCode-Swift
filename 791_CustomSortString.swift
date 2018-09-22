class Solution {
    func customSortString(_ S: String, _ T: String) -> String {
        var letterMap = [Unicode.Scalar:Int]()
        var result = ""
        for c in S.unicodeScalars {
            letterMap[c] = 0
        }
        for c in T.unicodeScalars {
            if let count = letterMap[c] {
                letterMap[c] = count + 1
            } else {
                result.append(String(c))
            }
        }
        
        for c in S.unicodeScalars {
            if let num = letterMap[c] {
                let repeated = String(repeating: String(c), count: num)
                result += repeated
            }
            
        }
        return result
    }
}