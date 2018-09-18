class Solution {
    func reverseWords(_ s: String) -> String {
        if s.isEmpty {
            return ""
        }
        var reversedWords = ""
        var words = s.split(separator: " ")
        for word in words {
            reversedWords += word.reversed()
            reversedWords += " "
        }
        reversedWords.removeLast()
        return reversedWords
    }
}