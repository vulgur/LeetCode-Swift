class Solution {
    func numberOfLines(_ widths: [Int], _ S: String) -> [Int] {
        var width = 0
        var lines = 1
        for letter in S.unicodeScalars {
            let letterWidth = widths[offset(for: letter)]
            if width + letterWidth > 100 {
                lines += 1
                width = letterWidth
                continue
            }
            width += letterWidth
        }
        return [lines, width]
    }
    
    func offset(for letter: Unicode.Scalar) -> Int {
        let startOffset = Unicode.Scalar("a").value
        return Int(letter.value - startOffset)
    }
}