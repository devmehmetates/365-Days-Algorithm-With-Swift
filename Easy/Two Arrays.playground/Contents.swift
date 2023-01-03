import UIKit

/// URL
/// https://www.hackerrank.com/challenges/one-month-preparation-kit-two-arrays/problem
func twoArrays(k: Int, A: [Int], B: [Int]) -> String {
    let firstArray = A.sorted { $0 > $1 }
    let secondArray = B.sorted()
    for index in 0..<A.count {
        if firstArray[index] + secondArray[index] < k {
            return Types.no.rawValue
        }
    }
    return Types.yes.rawValue
}

twoArrays(k: 5, A: [2, 1, 3], B: [7, 8, 9])

enum Types: String {
    case yes = "YES"
    case no = "NO"
}
