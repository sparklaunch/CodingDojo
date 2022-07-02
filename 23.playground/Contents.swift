import Foundation

func timesTable(for number: Int) {
    for i in 1...9 {
        print("\(number) * \(i) = \(number * i)")
    }
}

timesTable(for: 7)
