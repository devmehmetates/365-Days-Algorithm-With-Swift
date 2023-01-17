import UIKit

/// URL
/// https://www.hackerrank.com/challenges/electronics-shop/problem
func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    if (keyboards.max() ?? 0) + (drives.max() ?? 0) <= b {
        return (keyboards.max() ?? 0) + (drives.max() ?? 0)
    }
    
    var mostExpensiveCase = -1
    
    for keyboard in keyboards {
        for drive in drives {
            let totalAmount = keyboard + drive
            if mostExpensiveCase < totalAmount && totalAmount <= b {
                mostExpensiveCase = keyboard + drive
            }
        }
    }
    
    return mostExpensiveCase
}
