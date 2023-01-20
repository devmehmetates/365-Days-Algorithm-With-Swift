import UIKit

/// URL
/// https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited/problem
func jumpingOnClouds(c: [Int], k: Int) -> Int {
    var energy = 100
    var index = 0
    var cloudCount = c.count
    
    while true {
        if c[index] == 1 {
            energy -= 2
        }
        
        energy -= 1
        index = (index + k) % cloudCount
        if index == 0 {
            break
        }
    }

    return energy
}

jumpingOnClouds(c: [1, 1, 1, 0, 1, 1, 0, 0, 0, 0], k: 3)

extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
