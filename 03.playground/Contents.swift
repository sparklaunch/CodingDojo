import Foundation

func sum(numbers: Int...) -> Int {
    numbers.reduce(into: .zero) { partialResult, number in
        partialResult += number
    }
}

sum(numbers: -10, 20, 30)
