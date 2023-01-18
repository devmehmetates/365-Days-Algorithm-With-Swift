import UIKit

/// URL
/// https://www.hackerrank.com/challenges/angry-professor/problem
func angryProfessor(k: Int, a: [Int]) -> String {
    let arrived = a.filter { $0 <= 0 }.count
    
    if arrived >= k {
        return "NO"
    }

     return "YES"
}

angryProfessor(k: 3, a: [-1, -3, 4, 2])
