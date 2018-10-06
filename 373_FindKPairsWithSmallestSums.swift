class Solution {
    func kSmallestPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> [[Int]] {
        if nums1.isEmpty || nums2.isEmpty || k==0 {
            return []
        }
        
        var i = 0, j = 0
        var minPairs = [[Int]]()
        var output = [[Int]]()
        while i < k && i < nums1.count {
            minPairs.append([nums1[i], nums2[0], 0])
            i+=1
        }
        while output.count < k && !minPairs.isEmpty {
            let pair = minPairs.removeFirst()
            output.append([pair[0], pair[1]])
            if pair[2] == nums2.count - 1 {
                continue
            }
            let index = pair[2]+1
            minPairs.push([pair[0], nums2[index], index])
        }
        return output
    }
}

extension Array where Element == [Int] {
    mutating func push(_ item: [Int]) {
        var i = 0
        while i < self.count {
            let pair = self[i]
            let sum = pair[0]+pair[1]
            if sum < item[0]+item[1] {
                i += 1
            } else {
                break
            }
        }
        self.insert(item, at: i)
    }
}
