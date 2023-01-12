import UIKit

/// URL
/// https://www.hackerrank.com/challenges/strange-advertising/problem
func viralAdvertising(n: Int) -> Int {
    var totalLike = 0
    var currentPeople = 5
    for _ in 1...n {
        let dayLikes = currentPeople / 2
        totalLike += dayLikes
        currentPeople = dayLikes * 3
    }
    
    return totalLike
}


viralAdvertising(n: 3)
