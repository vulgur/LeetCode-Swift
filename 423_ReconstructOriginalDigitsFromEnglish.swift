class Solution {
    func originalDigits(_ s: String) -> String {
        let letters:[Character:Int] = [
            "z":0,
            "x":6,
            "w":2,
            "u":4,
            "g":8,
            "t":3,
            "f":5,
            "s":7,
            "o":1,
            "n":9]
        
        var map = [Character: Int]()
        var result = [Int]()
        for c in s {
            map[c] = (map[c] ?? 0) + 1
        }
        for letter in "zxwugtfso" {
            if let count = map[letter] {
                reduceWords(letter, count, &map)
                result += Array(repeating:letters[letter]!, count:count)
            }
        }
        
        if let count = map["e"] {
            result.append(contentsOf: Array(repeating:9, count:count))
        }
        
        var returnValue = ""
        for i in result.sorted() {
            returnValue +=  "\(i)"
        }
        return returnValue
    }

    func reduceWords(_ letter: Character, _ n:Int, _ map: inout [Character:Int]) {
        switch letter {
            case "z"://zero
                reduceLetters("z", n, &map)
                reduceLetters("e", n, &map)
                reduceLetters("r", n, &map)
                reduceLetters("o", n, &map)
            case "x"://six
                reduceLetters("s", n, &map)
                reduceLetters("i", n, &map)
                reduceLetters("x", n, &map)
            case "w":
                reduceLetters("t", n, &map)
                reduceLetters("w", n, &map)
                reduceLetters("o", n, &map)
            case "u":
                reduceLetters("f", n, &map)
                reduceLetters("o", n, &map)
                reduceLetters("u", n, &map)
                reduceLetters("r", n, &map)
            case "g":
                reduceLetters("e", n, &map)
                reduceLetters("i", n, &map)
                reduceLetters("g", n, &map)
                reduceLetters("h", n, &map)
                reduceLetters("t", n, &map)
            case "t":
                reduceLetters("t", n, &map)
                reduceLetters("h", n, &map)
                reduceLetters("r", n, &map)
                reduceLetters("e", n*2, &map)
            case "f":
                reduceLetters("f", n, &map)
                reduceLetters("i", n, &map)
                reduceLetters("v", n, &map)
                reduceLetters("e", n, &map)
            case "s":
                reduceLetters("s", n, &map)
                reduceLetters("e", n*2, &map)
                reduceLetters("v", n, &map)
                reduceLetters("n", n, &map)
            case "o":
                reduceLetters("o", n, &map)
                reduceLetters("n", n, &map)
                reduceLetters("e", n, &map)
            default:
                return
        }
        
    }
        
    func reduceLetters(_ letter: Character, _ n:Int, _ map: inout [Character: Int]) {
        if let count = map[letter] {
            map[letter] = count-n
        }
    }
}


