import UIKit

/// URL
/// https://www.hackerrank.com/challenges/cut-the-sticks/problem
func cutTheSticks(arr: [Int]) -> [Int] {
    var sortedArray = arr
    sortedArray.sort()
    var resultArray = [Int]()
    
    while sortedArray.count != 0 {
        resultArray.append(sortedArray.count)
        let min = sortedArray.min()
        sortedArray.removeAll { $0 == min }
    }
    
    return resultArray
}

cutTheSticks(arr: [5, 4, 4, 2, 2, 8])


//var iterations = [Int]()
//var stepArray = arr
//while stepArray.count != 0 {
//    iterations.append(stepArray.count)
//    stepArray = stepArray.map { $0 - (stepArray.min() ?? 0) }
//    stepArray.removeAll { $0 == 0 }
//}
//
//return iterations
