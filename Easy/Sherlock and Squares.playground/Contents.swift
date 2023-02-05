import UIKit

/// URL
/// https://www.hackerrank.com/challenges/sherlock-and-squares/problem

func squares(a: Int, b: Int) -> Int {
    let sqrtA = ceil(sqrt(Double(a)))
    let sqrtB = floor(sqrt(Double(b)))
    return Int(sqrtB - sqrtA + Double(1))
}
