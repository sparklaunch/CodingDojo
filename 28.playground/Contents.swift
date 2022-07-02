import Foundation

func printStars(rows: Int) {
    for index in 0..<rows {
        print(String(repeating: " ", count: index), terminator: "")
        print(String(repeating: "*", count: rows - index))
    }
}

printStars(rows: 5)
