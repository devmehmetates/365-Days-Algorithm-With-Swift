import UIKit

/// URL
/// https://www.hackerrank.com/challenges/one-month-preparation-kit-drawing-book/problem

func pageCount(n lastPage: Int, p wantedPage: Int) -> Int {
    var pages: [[Int]] = []
    
    var count = 0
    var ternaryPages = [Int]()
    for page in 1...lastPage {
        if page == 1 {
            pages.append([1])
        } else {
            count += 1
            ternaryPages.append(page)
        }
        
        if count == 2 {
            pages.append(ternaryPages)
            ternaryPages = []
            count = 0
        } else {
            if page == lastPage {
                pages.append(ternaryPages)
            }
        }
    }
    
    var pageFound = 0
    for (pageIndex, pageNumbers) in pages.enumerated() {
        for pageNumber in pageNumbers {
            if pageNumber == wantedPage {
                pageFound = pageIndex
            }
        }
    }
    
    if pages.count - pageFound > pageFound {
        return pageFound
    } else {
        return (pages.count - 1) - pageFound
    }
}

pageCount(n: 6, p: 2)
