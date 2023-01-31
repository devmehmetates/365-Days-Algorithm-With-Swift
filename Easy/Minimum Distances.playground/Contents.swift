import UIKit

/// URL
/// https://www.hackerrank.com/challenges/minimum-distances/problem

func minimumDistances(a: [Int]) -> Int {
    var dictionary = [Int: [Int]]()
    
    for (index, number) in a.enumerated() {
        if a.filter({ $0 == number }).count  == 2 {
            if dictionary[number] != nil {
                dictionary[number]?.append(index)
            } else {
                dictionary[number] = [index]
            }
        }
    }
    
    let values: [Int] = dictionary.values.map { value in
        guard let first = value.first, let last = value.last else { return -1 }
        return abs(first - last)
    }
    
    return values.min() ?? -1
}

minimumDistances(a: [7, 1, 3, 4, 1, 7])
