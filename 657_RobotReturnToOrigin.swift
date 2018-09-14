class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        if moves.count % 2 != 0 {
            return false
        }
        var x = 0
        var y = 0
        for move in moves.unicodeScalars {
            switch move {
                case "U": y+=1
                case "D": y-=1
                case "L": x-=1
                case "R": x+=1
                default: break
            }

        }
        return x==0 && y==0
    }
}