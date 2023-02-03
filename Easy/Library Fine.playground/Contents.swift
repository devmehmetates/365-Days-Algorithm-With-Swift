import UIKit

/// URL
/// https://www.hackerrank.com/challenges/library-fine/problem
func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    var count = 0
    if y1 > y2 {
        count = 10000;
    } else if y1==y2 {
        if m1 == m2 && d1 > d2 {
            count = 15 * (d1 - d2)
        } else if m1 > m2 {
            count = 500 * (m1 - m2)
        }
    }
    
    return count
}

libraryFine(d1: 9, m1: 6, y1: 2015, d2: 6, m2: 6, y2: 2015)
