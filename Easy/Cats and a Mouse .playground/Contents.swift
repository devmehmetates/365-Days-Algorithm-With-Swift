import UIKit

/// URL
/// https://www.hackerrank.com/challenges/cats-and-a-mouse/problem

func catAndMouse(x: Int, y: Int, z: Int) -> String {
    let catADistance = abs(z - x)
    let catBDistance = abs(z - y)
    if catADistance > catBDistance {
        return Animals.catB.rawValue
    } else if catADistance < catBDistance {
        return Animals.catA.rawValue
    }
    
    return Animals.mouseC.rawValue
}

enum Animals: String {
    case catA = "Cat A"
    case catB = "Cat B"
    case mouseC = "Mouse C"
}
