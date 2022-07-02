import Foundation

func printFizzBuzz(lowerBound: Int, upperBound: Int) {
    for number in lowerBound...upperBound {
        switch (number.isMultiple(of: 5), number.isMultiple(of: 7)) {
        case (true, true):
            print("FizzBuzz")
        case (true, _):
            print("Fizz")
        case (_, true):
            print("Buzz")
        default:
            print(number)
        }
    }
}

printFizzBuzz(lowerBound: 35, upperBound: 40)
