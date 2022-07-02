import Foundation

func printExceptThree(lowerBound: Int, upperBound: Int) {
    for number in lowerBound...upperBound where !String(number).hasSuffix("3") {
        print(number, terminator: " ")
    }
}

printExceptThree(lowerBound: 21, upperBound: 33)
