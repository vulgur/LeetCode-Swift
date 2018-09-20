class Solution {
    func shortestToChar(_ S: String, _ C: Character) -> [Int] {
        var distances = Array(repeating: 0, count: S.count)
        var charIndexes = [Int]()
        for (i, c) in S.enumerated() {
            if c == C {
                charIndexes.append(i)
            }
        }
        
        for i in 0..<S.count {
            distances[i] = distance(i, charIndexes)
        }
        return distances
    }
    

    func distance(_ index: Int, _ indexes: [Int]) -> Int {
        if index <= indexes.first! {
            return indexes.first! - index
        }
        if index >= indexes.last! {
            return index - indexes.last!
        }
        var i = 0
        while index > indexes[i] {
            i += 1
        }
        return min(index-indexes[i-1], indexes[i]-index )
    }
}