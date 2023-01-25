import UIKit

/// URL
/// https://www.hackerrank.com/challenges/counting-valleys/problem
func countingValleys(steps: Int, path: String) -> Int {
    var valleyCount = 0
    var level = 0
    var lastLevel = 0
    
    for step in path {
        if String(step) == "U" {
            level += 1
        } else {
            level -= 1
        }
        
        if level == 0 && lastLevel == -1 {
            valleyCount += 1
        }
        
        lastLevel = level
    }
    
    return valleyCount
}
