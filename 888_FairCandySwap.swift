class Solution {
    func fairCandySwap(_ A: [Int], _ B: [Int]) -> [Int] {
        var setA = Set<Int>()
        // var setB = Set<Int>()
        var sumA = 0
        var sumB = 0
        for a in A {
            sumA += a
            setA.insert(a)
        }
        for b in B {
            sumB += b
            // setB.insert(b)
        }
        let diff = (sumA - sumB) >> 1
        
        for b in B {
            if setA.contains(b+diff) {
                return [b+diff,b]
            }
        }
        return [0,0]
    }
}
