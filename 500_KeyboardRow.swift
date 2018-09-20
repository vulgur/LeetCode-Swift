class Solution {
    let row1 = "qwertyuiopQWERTYUIOP"
    let row2 = "asdfghjklASDFGHJKL"
    let row3 = "zxcvbnm(ZXCVBNM)"
    
    private func row(of letter: String) -> Int {
        if row1.contains(letter) {
            return 1
        } else if row2.contains(letter) {
            return 2
        } else if row3.contains(letter) {
            return 3
        } else {
            return 0
        }
    }
    private func canTypeInRow(_ word: String) -> Bool {
        let firstLetter = String(word.first!)
        let firstLetterRow = row(of: firstLetter)
        let startIndex = word.index(after: word.startIndex)
        for item in word[startIndex...] {
            let letter = String(item)
            let row = self.row(of: letter)
            if row != firstLetterRow || row == 0 {
                return false
            }
        }
        return true
    }
    func findWords(_ words: [String]) -> [String] {
        
        var results = [String]()
        for word in words {
            if word.isEmpty {
                continue
            }
            if canTypeInRow(word) {
                results.append(word)
            }
        }
        return results
    }
}