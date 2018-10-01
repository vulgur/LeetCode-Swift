class Solution {

    func letterCasePermutation(_ S: String) -> [String] {
        let source = S.lowercased()
        return permutation(0,source,[""])
    }
    
    func permutation(_ index: Int, _ str: String, _ result:[String]) -> [String]{
        guard index < str.count else {
            return result
        }
        let numbers = Set<Character>("1234567890")
        let item = str[str.index(str.startIndex, offsetBy:index)]
        var temp = [String]()
        for s in result {
            temp.append(s+String(item))
            if !numbers.contains(item) {
                temp.append(s+String(item).uppercased())
            }
        }
        return permutation(index+1, str, temp)
    }
}
