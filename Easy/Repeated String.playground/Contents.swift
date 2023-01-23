import UIKit

/// URL
/// https://www.hackerrank.com/challenges/repeated-string/problem
func repeatedString(s: String, n: Int) -> Int {
    let repeatCount = n / s.count
    if repeatCount == 0 {
        var total = 0
        for index in 0..<n {
            if String(Array(s)[index]) == "a" {
                total += 1
            }
        }
        return total
    }
    let repeatDifferent = n % (repeatCount)
    let repeatedCount = s.filter { $0 == "a" }.count
    var total = repeatCount * repeatedCount
    if repeatDifferent != 0 {
        for index in 0..<repeatDifferent {
            if String(Array(s)[index]) == "a" {
                total += 1
            }
        }
    }
    return total
}

repeatedString(s: "ababa", n: 3)
