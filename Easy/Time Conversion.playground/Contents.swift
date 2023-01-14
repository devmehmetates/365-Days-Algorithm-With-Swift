import UIKit

/// URL
/// https://www.hackerrank.com/challenges/time-conversion/problem
func timeConversion(s: String) -> String {
    var timeZoneProcess: Bool = false
    var times: [Int] = s.split(separator: ":").compactMap{
        if $0.contains("AM") {
            return Int(String($0).replacingOccurrences(of: "AM", with: ""))
        } else if $0.contains("PM") {
            timeZoneProcess = true
            return Int(String($0).replacingOccurrences(of: "PM", with: ""))
        }
        return Int($0)
    }
    
    if times[0] < 12 && timeZoneProcess {
        times[0] += 12
    } else if times[0] >= 12 && !timeZoneProcess {
        times[0] -= 12
    }
    
    return "\(getFormattedTime(times[0])):" + "\(getFormattedTime(times[1])):" + getFormattedTime(times[2])
}

func getFormattedTime(_ time: Int) -> String {
    time < 10 ? "0\(time)" : "\(time)"
}

timeConversion(s: "00:01:00PM")
