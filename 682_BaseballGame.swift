class Solution {
    func calPoints(_ ops: [String]) -> Int {
        var validScores = [Int]()
        var total = 0
        for item in ops {
            switch item {
                case "C":
                let lastScore = validScores.popLast()!
                total -= lastScore
                case "D":
                let points = validScores.last! * 2
                validScores.append(points)
                total += points
                case "+":
                let points = validScores.last! + validScores[validScores.count-2]
                total += points
                validScores.append(points)
                default: 
                let score = Int(item)!
                validScores.append(score)
                total += score
            }
        }
        return total
    }
}