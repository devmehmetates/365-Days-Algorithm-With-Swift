import UIKit

/// URL
/// https://www.hackerrank.com/challenges/one-month-preparation-kit-sock-merchant/problem
func sockMerchant(n: Int, ar: [Int]) -> Int {
    var countArray: [Int] = []
    ar.forEach {
        if !countArray.contains($0) {
            countArray.append($0)
        } else {
            let firstIndex = countArray.firstIndex(of: $0).unsafelyUnwrapped
            countArray.remove(at: firstIndex)
        }
    }
    
    print(countArray)
    
    return (ar.count - countArray.count) / 2
}

sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])
