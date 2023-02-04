import UIKit

/// URL
/// https://www.hackerrank.com/challenges/larrys-array/problem

func larrysArray(A: [Int]) -> String {
    let count = A.enumerated().flatMap { i, element in
        return A[i + 1..<A.count].map { j in
            return element > j ? 1 : 0
        }
    }.reduce(0, +)

    return count % 2 == 0 ? "YES" : "NO"
}
