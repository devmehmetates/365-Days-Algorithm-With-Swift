import UIKit

/// URL
/// https://www.hackerrank.com/challenges/bon-appetit/problem
func bonAppetit(bill: [Int], k annaNotEat: Int, b annaContributed: Int) -> Void {
    var realBill: [Int] = bill
    realBill.remove(at: annaNotEat)
    let annaPaid = ((realBill.reduce(0, +)) / 2)
    let brianPaid = ((bill.reduce(0, +)) / 2)
    let refund = brianPaid - annaPaid
    
    if annaPaid == annaContributed {
        print("Bon Appetit")
    } else {
        print(refund)
    }
}

bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 7)
