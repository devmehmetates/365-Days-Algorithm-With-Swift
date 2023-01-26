import UIKit

/// URL
/// https://www.hackerrank.com/challenges/camelcase/problem

func camelcase(s: String) -> Int {
    s.filter { !$0.isLowercase }.count + 1
}

camelcase(s: "saveChangesInTheEditor")
