import UIKit

/// URL
/// https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
func breakingRecords(scores: [Int]) -> [Int] {
    var maxScore = scores.first ?? 0
    var minScore = scores.first ?? 0
    var recordCounts: [Int] = [0, 0]
    
    for (index, score) in scores.enumerated() {
        if index == 0 { continue }

        if score > maxScore {
            recordCounts[0] += 1
            maxScore = score
            continue
        }
        
        if score < minScore {
            recordCounts[1] += 1
            minScore = score
        }
    }
    
    return recordCounts
}

breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1])
