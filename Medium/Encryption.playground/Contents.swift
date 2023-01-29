import Foundation

/// URL
/// https://www.hackerrank.com/challenges/encryption/problem

func encryption(s: String) -> String {
    let encryptedValue = getEncryptedGrid(s)
    return encryptedValue.joined(separator: " ")
}

func getGrid(columnCount: Int, _ s: String) -> [[Character]] {
    var gridRowItemCount = 1
    var grid = [[Character]]()
    var ternatyItems = [Character]()
    
    for letter in s {
        if gridRowItemCount < columnCount {
            ternatyItems.append(letter)
            gridRowItemCount += 1
        } else if gridRowItemCount == columnCount {
            gridRowItemCount = 1
            ternatyItems.append(letter)
            grid.append(ternatyItems)
            ternatyItems.removeAll()
        } else {
            gridRowItemCount = 1
        }
    }
    
    if !ternatyItems.isEmpty {
        grid.append(ternatyItems)
    }
    
    return grid
}

func getEncryptedGrid(_ s : String) -> [String] {
    let columnCount = Int(ceil(Double(s.count).squareRoot()))
    let grid = getGrid(columnCount: columnCount, s)
    var encryptedGrid = [[Character]]()
    var ternaryItems = [Character?]()
    
    for index in 0..<columnCount {
        for itemIndex in 0..<grid.count {
            ternaryItems.append(grid[safe: itemIndex]?[safe: index])
        }
        encryptedGrid.append(ternaryItems.compactMap { $0 })
        ternaryItems.removeAll()
    }
    
    var items = [String]()
    for item in encryptedGrid {
        let mapped = item.map { String($0) }
        items.append(mapped.reduce("", +))
    }
    return items
}

extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

encryption(s: "feedthedog")
