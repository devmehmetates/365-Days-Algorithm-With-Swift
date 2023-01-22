import UIKit

/// URL
/// https://www.hackerrank.com/challenges/save-the-prisoner/problem
func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
   return (m - 1  + s - 1 ) % n + 1;
}
