class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var visited = Array(repeating:Array(repeating: false, count:image[0].count), count:image.count)
        var result = image
        if sr<0 || sr>image.count-1 || sc<0 || sc>image[0].count-1 {
            return image
        }
        let oldColor = image[sr][sc]
        if oldColor != newColor {
            fill(&result, sr, sc, oldColor, newColor, &visited)
            return result
        } else {
            return image
        }
        
    }
    
    func fill(_ result: inout [[Int]], _ sr: Int, _ sc: Int, _ color: Int, _ newColor: Int, _ visited: inout [[Bool]]) {
        guard sr>=0, sr<result.count, sc>=0, sc<result[0].count, visited[sr][sc]==false, result[sr][sc]==color else {
            return
        }
        visited[sr][sc] = true
        result[sr][sc] = newColor
        fill(&result, sr-1, sc, color, newColor, &visited)
        fill(&result, sr+1, sc, color, newColor, &visited)
        fill(&result, sr, sc-1, color, newColor, &visited)
        fill(&result, sr, sc+1, color, newColor, &visited)
    }
}
