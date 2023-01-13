import UIKit

/// URL
/// https://www.hackerrank.com/challenges/designer-pdf-viewer/problem

func designerPdfViewer(h: [Int], word: String) -> Int {
    let alfabet = "abcdefghijklmnopqrstuvwxyz"
    var heights = [Int]()
    alfabet.enumerated().forEach { index, letter in
        for wordLetter in word {
            if letter == wordLetter {
                heights.append(h[index])
            }
        }
    }
    
    return (heights.max() ?? 0) * word.count
}
