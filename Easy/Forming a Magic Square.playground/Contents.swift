import UIKit

/// URL
/// https://www.hackerrank.com/challenges/magic-square-forming/problem

func formingMagicSquare(s: [[Int]]) -> Int {
    return getCosts(s).min() ?? 0
}

func getCosts(_ matrix: [[Int]]) -> [Int] {
    var costs = [Int]()
    let squares = [
        [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
        [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
        [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
        [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
        [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
        [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
        [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
        [[2, 7, 6], [9, 5, 1], [4, 3, 8]]
    ]
    squares.forEach { magicSquare in
        costs.append(zip(magicSquare, matrix).flatMap { zip($0, $1) }.map { abs($0 - $1) }.reduce(0, +))
    }
    return costs
}
