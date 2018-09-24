class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var total = 0
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == 1 {
                    total += calculateCellPerimeter(i,j,grid)
                }
            }
        }
        return total
    }
    
    func calculateCellPerimeter(_ x: Int, _ y: Int, _ grid: [[Int]]) -> Int {
        var top = 0, bottom = 0, left = 0, right = 0
        let rows = grid.count
        let cols = grid[0].count
        
        if x == 0 {
            top = 1
        } else {
            if grid[x-1][y] == 1 {
                top = 0
            } else {
                top = 1
            }
        }
        if x == rows-1 {
            bottom = 1
        } else {
            if grid[x+1][y] == 1 {
                bottom = 0
            } else {
                bottom = 1
            }
        }
        if y == 0 {
            left = 1
        } else {
            if grid[x][y-1] == 1 {
                left = 0
            } else {
                left = 1
            }
        }
        if y == cols-1 {
            right = 1
        } else {
            if grid[x][y+1] == 1 {
                right = 0
            } else {
                right = 1
            }
        }
        
        return top+bottom+left+right
    }
}