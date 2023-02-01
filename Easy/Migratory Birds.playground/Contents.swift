import UIKit

/// URL
/// https://www.hackerrank.com/challenges/migratory-birds/problem

func migratoryBirds(arr: [Int]) -> Int {
    var types = [Int]()
    for index in 1...5 {
        types.append(arr.filter { $0 == index }.count)
    }
    
    return (types.firstIndex(of: types.max() ?? 0) ?? 0) + 1
}

migratoryBirds(arr: [1, 4, 4, 4, 5, 3])
