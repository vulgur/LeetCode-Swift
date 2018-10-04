class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
        if s.count <= k { return String(s.reversed())}
        var array = s.map{ String($0) }
        var start = 0
        var i = 0
        while i < array.count {
            reverse(in: &array, from:i, to:i+k)
            i += 2*k
        }
        return array.reduce("", +)
    }
    
    func reverse(in array: inout [String], from: Int, to: Int) {
        var start = from
        var end = min(to, array.count) - 1
        while start < end {
            let tmp = array[start]
            array[start] = array[end]
            array[end] = tmp
            
            start += 1
            end -= 1
        }
    }
}
