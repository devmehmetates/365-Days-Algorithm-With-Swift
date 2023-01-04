import UIKit

/// URL
/// https://www.hackerrank.com/challenges/the-hurdle-race/problem

func hurdleRace(k: Int, height: [Int]) -> Int {
    let doses = (height.max() ?? 0) - k
    if doses > 0 {
        return doses
    } else {
        return 0
    }
}

hurdleRace(k: 4, height: [1, 6, 3, 5, 2])
