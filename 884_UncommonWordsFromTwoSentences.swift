class Solution {
    func uncommonFromSentences(_ A: String, _ B: String) -> [String] {
        let sentence = A + " " + B
        let words = sentence.split(separator: " ") 
        let wordCount = words.reduce(into: [:]) {count, word in 
            count[word, default:0] += 1                                              
        }
        return Array(wordCount.filter{$0.value == 1}.map{String($0.key)})
    }
}