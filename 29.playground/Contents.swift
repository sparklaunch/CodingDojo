import Foundation

func printStars(rows: Int) {
    for number in 0..<rows {
        print(String(repeating: " ", count: rows - number - 1), terminator: "")
        print(String(repeating: "*", count: 2 * number + 1), terminator: "")
        print(String(repeating: " ", count: rows - number - 1))
    }
}

printStars(rows: 5)
