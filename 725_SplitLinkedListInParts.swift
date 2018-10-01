class Solution {
    func splitListToParts(_ root: ListNode?, _ k: Int) -> [ListNode?] {
        if root == nil { return []}
        var node:ListNode? = root
        var length = 0
        while let l = node  {
            length += 1
            node = l.next
        }
        
        var partSize = 1
        var biggerSize = 1
        var numberOfBiggerSize = 0
        if length<=k {
            partSize = 1
        } else {
            partSize = length/k
            numberOfBiggerSize = length%k
            biggerSize = partSize + 1
        }
        
        node = root
        var list = [ListNode?]()
        for i in 1...k {
            let size = numberOfBiggerSize >= i ? biggerSize : partSize
            var lastNode = node
            list.append(node)
            for _ in 0..<size where node != nil {
                lastNode = node
                node = node!.next
            }
            lastNode?.next = nil
        }
        return list
    }
}
