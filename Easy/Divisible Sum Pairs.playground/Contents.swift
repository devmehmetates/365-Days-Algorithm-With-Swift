import UIKit

/// URL
/// https://www.hackerrank.com/challenges/divisible-sum-pairs/problem

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var pairCount = 0
    var controlArray = ar
    controlArray.remove(at: 0)
    ar.forEach { number in
        controlArray.forEach { controlNumber in
            let total = number + controlNumber
            if total % k == 0 {
                pairCount += 1
            }
        }
        if controlArray.indices.contains(0) {
            controlArray.remove(at: 0)
        }
    }
    return pairCount
}

divisibleSumPairs(n: 6, k: 3, ar: [1, 3, 2, 6, 1, 2])
