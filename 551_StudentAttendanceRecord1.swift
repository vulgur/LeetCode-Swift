class Solution {
    func checkRecord(_ s: String) -> Bool {
        var absents = 0
        var lates = 0
        var lastRecord: Character = "L"
        for record in s {
            if record == "A" {
                absents += 1
                if absents > 1 {
                    return false
                }
            } else if record == "L" {
                if lastRecord == "L" {
                    lates += 1
                } else {
                    lates = 1
                }

                if lates > 2 {
                    return false
                }
            }
            lastRecord = record
        }
        return true
    }
}
