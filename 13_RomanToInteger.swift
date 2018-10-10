class Solution {
    func romanToInt(_ s: String) -> Int {
        var num = 0
        var lastRoman: Character = "/"
        var lastNum = 0
        for (i, c) in s.enumerated() {
            switch c {
                case "M": 
                    if lastRoman=="C" {
                        num -= lastNum
                        lastNum = 900
                    } else {
                        lastNum = 1000
                    }
                    lastRoman = "/"
                case "D": 
                    if lastRoman=="C" {
                        num -= lastNum
                        lastNum = 400
                    } else {
                        lastNum = 500
                    }
                   lastRoman = "/"
                case "C":
                    if lastRoman=="X" {
                        num -= lastNum
                        lastNum = 90
                    } else {
                        lastNum = 100
                    }
                   lastRoman = "/"
                case "L":
                    if lastRoman=="X" {
                        num -= lastNum
                        lastNum = 40
                    } else {
                        lastNum = 50
                    }
                    lastRoman = "/"
                case "X":
                    if lastRoman=="I" {
                        num -= lastNum
                        lastNum = 9
                    } else {
                        lastNum = 10
                    }
                    lastRoman = "/"
                case "V":
                    if lastRoman=="I" {
                        num -= lastNum
                        lastNum = 4
                    } else {
                        lastNum = 5
                    }
                    lastRoman = "/"
                default:
                    lastNum = 1
                    lastRoman = c
            }
            lastRoman = c
            num += lastNum
        }
        return num
    }
}
