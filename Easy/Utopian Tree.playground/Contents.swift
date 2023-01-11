import UIKit

/// URL
/// https://www.hackerrank.com/challenges/utopian-tree/problem
func utopianTree(n: Int) -> Int {
    var treeHeight = 0
    for period in 0...n {
        if period % 2 == 0 {
            treeHeight += 1
        } else {
            treeHeight += treeHeight
        }
    }
    
    return treeHeight
}
