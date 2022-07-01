import Foundation

let numbers = Array(stride(from: 1, through: 10, by: 1))

func printWithoutLastFive(_ numbers: [Int]) {
    let dropped = numbers.dropLast(5)
    print(dropped, terminator: " ")
}

printWithoutLastFive(numbers)
