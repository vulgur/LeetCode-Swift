class Solution {
    func findAndReplacePattern(_ words: [String], _ pattern: String) -> [String] {
        var results = [String]()
        for word in words {
            if match(word, pattern) {
                results.append(word)
            }
        }
        return results
    }
    
    func match(_ word: String, _ pattern: String) -> Bool {
        var patternDict = [Character: Character]()
        var letterSet = Set<Character>()
        for i in 0..<word.count {
            let index = word.index(word.startIndex, offsetBy: i)
            let letter = word[index]
            let patternLetter = pattern[index]
            if let value = patternDict[patternLetter] {
                if value != letter {
                    return false
                }
            } else {
                if letterSet.contains(letter) {
                    return false
                }
                patternDict[patternLetter] = letter
                letterSet.insert(letter)
            }
        }
        return true
    }
}