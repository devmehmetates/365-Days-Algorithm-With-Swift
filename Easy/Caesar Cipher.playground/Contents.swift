import UIKit

/// URL
/// https://www.hackerrank.com/challenges/one-month-preparation-kit-caesar-cipher-1/problem
func caesarCipher(s word: String, k rotation: Int) -> String {
    let originalAlfabet = Array("abcdefghijklmnopqrstuvwxyz")
    var rotatedAlfabet = Array("abcdefghijklmnopqrstuvwxyz")

    for _ in 0..<rotation {
        let takenLetter = String(rotatedAlfabet.first.unsafelyUnwrapped)
        rotatedAlfabet.removeFirst()
        rotatedAlfabet.append(contentsOf: takenLetter)
    }
    

    var rotatedWord = ""
    for letter in word {
        let lowerLetter = Character(letter.lowercased())
        if let originalIndex = originalAlfabet.firstIndex(of: lowerLetter) {
            if lowerLetter == letter {
                rotatedWord += String(rotatedAlfabet[originalIndex])
            } else {
                rotatedWord += String(rotatedAlfabet[originalIndex]).uppercased()
            }
        } else {
            rotatedWord += String(letter)
        }
    }
    
    return rotatedWord
}

caesarCipher(s: "Always-Look-on-the-Bright-Side-of-Life", k: 5)
