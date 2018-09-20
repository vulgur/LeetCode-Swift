class Solution {
    func numSpecialEquivGroups(_ A: [String]) -> Int {
        var group = Set<String>()
        for str in A {
            if str.count == 1 || str.count == 2 {
                group.insert(str)
                continue
            }
            
            var odds = ""
            var evens = ""
            for (i, c) in str.enumerated() {
                let s = String(c)
                if i%2==0 {
                    evens += s
                } else {
                    odds += s
                }
            }
            let sorted = odds.sorted() + evens.sorted()
            group.insert(String(sorted))
        }
        return group.count
    }
}