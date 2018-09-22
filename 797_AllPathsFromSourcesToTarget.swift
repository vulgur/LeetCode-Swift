class Solution {
    func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
        var paths = [[Int]]()
        var currentPath = [Int]()
        findPath(0, graph, currentPath, &paths)

        return paths
    }
    
    func findPath(_ source:Int, _ graph:[[Int]], _ currentPath: [Int], _ paths: inout [[Int]]){
        let target = graph.count-1
        if source == target {
            return
        }

        let nodes = graph[source]
        let path = currentPath + [source]
        for node in nodes {
            if node == target {
                paths.append(path + [target])
                continue
            }
            findPath(node, graph, path, &paths) 
        }
    }
}