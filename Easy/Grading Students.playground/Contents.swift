import UIKit

/// URL
/// https://www.hackerrank.com/challenges/grading/problem
func gradingStudents(grades: [Int]) -> [Int] {
    var resultArray = [Int]()
    grades.forEach { grade in
        let gradeModFive = grade % 5
        var different = 0
        if gradeModFive != 0 {
            different = 5 - gradeModFive
        }
        let roundedGrade = different + grade
        if roundedGrade != grade && different < 3 {
            if roundedGrade < 40 {
                resultArray.append(grade)
            } else {
                resultArray.append(roundedGrade)
            }
        } else {
            resultArray.append(grade)
        }
    }
    
    return resultArray
}

gradingStudents(grades: [73, 67, 38, 33])
