import UIKit

/// URL
/// https://www.hackerrank.com/challenges/day-of-the-programmer/problem

func dayOfProgrammer(year: Int) -> String {
    let months = [
        31,
        getFebruaryDay(year),
        31,
        30,
        31,
        30,
        31,
        31,
        30,
        31,
        30,
        31
    ]
    
    let programmerDay = 256
    var currentDay = 0
    var month = 0
    
    while currentDay + months[month] < programmerDay {
        currentDay += months[month]
        month += 1
    }
    
    let day = programmerDay - currentDay
    let formattedDay = day < 10 ? "0\(day)" : "\(day)"
    let formattedMonth =  month + 1 < 10 ? "0\(month + 1)" : "\(month + 1)"
    
    return "\(formattedDay).\(formattedMonth).\(year)"
}

func getFebruaryDay(_ year: Int) -> Int {
    if year < 1918 {
        return year % 4 == 0 ? 29 : 28
    } else if year == 1918 {
        return 15
    } else {
        return (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)) ? 29 : 28
    }
}


dayOfProgrammer(year: 1800)
