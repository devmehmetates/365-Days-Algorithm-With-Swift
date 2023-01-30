import UIKit

/// URL
/// https://www.hackerrank.com/challenges/alternating-characters/problem

// MARK: - Basicly
//func alternatingCharacters(s: String) -> Int {
//    var lastCharacter = ""
//    var deletion = 0
//    for letter in s {
//        if lastCharacter == String(letter) {
//            deletion += 1
//        }
//        lastCharacter = String(letter)
//    }
//    return deletion
//}

// MARK: - Alternative
func alternatingCharacters(s: String) -> Int {
    return s.reduce(into: (0, "")) { (result, letter) in
        result.0 += result.1 == String(letter) ? 1 : 0
        result.1 = String(letter)
    }.0
}

alternatingCharacters(s: "BBBBB")
