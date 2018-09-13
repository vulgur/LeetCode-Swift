class Solution {
    let codes = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    let codesStartOffset = Unicode.Scalar("a").value
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        var morseSet = Set<String>()
        words.forEach{ word in 
            var morse = ""
            for letter in word {
                let letterString = String(letter)
                let letterOffset = Int(Unicode.Scalar(letterString)!.value - codesStartOffset)
                morse += codes[letterOffset]
            }
        morseSet.insert(morse)
        }
       return morseSet.count
    }
}