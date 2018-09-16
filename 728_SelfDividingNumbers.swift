class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var results = [Int]()
        for num in left...right {
            if isDividingNumber(num) {
                results.append(num)
            }
        }
        return results
    }
     
    func isDividingNumber(_ num: Int) -> Bool {
        var digits = Set<Int>()
        var mod = 10
        var number = num
        while number > 0 {
            if number % 10 == 0 || num%(number%10) != 0 {
                return false
            } 
            number = number / 10
        }
      
        return true
    }
}