class Solution {
    
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        if grid.isEmpty {
            return 0
        }
        let rows = grid.count
        let cols = grid[0].count
        var visited = Array(repeating: Array(repeating: false, count:cols), count: rows)
        var maxArea = 0
        for x in 0..<rows {
            for y in 0..<cols {
                if grid[x][y] == 1 {
                    maxArea = max(maxArea, islandArea(x,y,grid,&visited))
                }
            }
        }
        
        return maxArea
    }
    
    func islandArea(_ x:Int, _ y:Int, _ grid:[[Int]], _ v:inout [[Bool]]) -> Int {
        if x<0 || x>grid.count-1 || y<0 || y>grid[0].count-1 || grid[x][y] == 0{
            return 0
        }
        if v[x][y] {
            return 0
        }
        v[x][y] = true
        return 1 + islandArea(x+1, y, grid, &v) + islandArea(x-1, y, grid, &v) + islandArea(x, y-1, grid, &v) + islandArea(x, y+1, grid, &v)
        
    }
}
