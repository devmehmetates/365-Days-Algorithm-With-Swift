import UIKit

/// URL
/// https://www.hackerrank.com/challenges/sock-merchant/problem

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var matchedCount = 0
    let counts = ar.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    counts.forEach { matchedCount += $1 / 2 }
    
    return matchedCount
}

sockMerchant(n: 10, ar: [1, 1, 3, 1, 2, 1, 3, 3, 3, 3])
