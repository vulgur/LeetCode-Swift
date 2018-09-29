class Solution {
    func complexNumberMultiply(_ a: String, _ b: String) -> String {
        let (a1, b1) = splitComplexNumber(a)
        let (a2, b2) = splitComplexNumber(b)
        let A = a1*a2 - b1*b2
        let B = a1*b2 + a2*b1
        return "\(A)+\(B)i"
    }
    
    func splitComplexNumber(_ n: String) -> (Int, Int) {
        let components = n.split(separator: "+")
        let a = components[0]
        let b = components[1]
        return (Int(a)!, Int(b.prefix(b.count-1))!)
    }
}
