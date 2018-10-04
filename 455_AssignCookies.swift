class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var sortedS = s.sorted(by:<)
        var sortedG = g.sorted(by:<)
        var i=0, j=0
        while i < s.count && j < g.count {
            if sortedS[i] >= sortedG[j] {
                j+=1
            }
            i+=1
        }
        return j
    }
}
