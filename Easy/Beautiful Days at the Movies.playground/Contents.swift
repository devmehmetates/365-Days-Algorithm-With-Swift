import UIKit

/// URL
/// https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/problem
func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var dayCount = 0
    for day in i...j {
        let reversedDay = reverse(day)
        if abs(day - reversedDay) % k == 0 {
            dayCount += 1
        }
    }
    
    return dayCount
}

func reverse(_ day: Int) -> Int {
    var number = day
    var reverseNum = 0
    
    while(number != 0){
       reverseNum = reverseNum * 10
       reverseNum = reverseNum + number % 10
       number = number/10
    }
    
    return reverseNum
}
