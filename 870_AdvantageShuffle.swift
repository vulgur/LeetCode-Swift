class Solution {
    func advantageCount(_ A: [Int], _ B: [Int]) -> [Int] {
        var sortedA = A.sorted(by: >)
        let sortedB = B.sorted(by: >)
        var map = [Int:[Int]]()
        for i in 0..<sortedB.count {
            let maxA = sortedA.first!
            let item = sortedB[i]
            if map[item] == nil {
                map[item] = [Int]()
            }
            if maxA <= sortedB[i] {
                map[item]!.append(sortedA.removeLast())
            } else {
                var left = 0, right = sortedA.count - 1
                var index = 0
                while left < right {
                    let mid = (left + right)/2
                    if sortedA[mid] == item {
                        if mid == 0 {
                            index = 0
                        } else {
                            index = mid-1
                        }
                        break
                    } else if sortedA[mid] > item {
                        left = mid + 1
                    } else {
                        right = mid - 1
                    }
                }
                if left == 0 {
                    index = 0
                } else {
                    index = left-1
                }
                map[item]!.append(sortedA.remove(at: index))
            }
        }
        var result = [Int]()
        for item in B {
            if var arr = map[item] {
                result.append(arr.first!)
                map[item] = Array(arr.dropFirst())
            }
        }
        
        return result
    }
}
