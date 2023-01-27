import UIKit

/// URL
/// https://www.hackerrank.com/challenges/apple-and-orange/problem
func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    print(apples.map { a + $0 }.filter { s...t ~= $0 }.count)
    print(oranges.map { b + $0 }.filter { s...t ~= $0 }.count)
}

countApplesAndOranges(s: 2, t: 3, a: 1, b: 5, apples: [2], oranges: [-2])
