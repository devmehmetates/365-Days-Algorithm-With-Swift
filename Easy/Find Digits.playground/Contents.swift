import UIKit

/// URL
/// https://www.hackerrank.com/challenges/find-digits/problem
func findDigits(n: Int) -> Int {
    let numbers = String(n).compactMap { Int(String($0)) }
    var dividerCount = 0
    numbers.forEach {
        if $0 != 0 {
            if n % $0 == 0 {
                dividerCount += 1
            }
        }
    }
    return dividerCount
}

findDigits(n: 1012)
