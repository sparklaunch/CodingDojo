import Foundation

let numbers = [2, 5, 4, 4, 8, 3, 16, 2, 32]

for (index, number) in numbers.enumerated() {
    if index % 2 == 0 {
        print(number, terminator: " ")
    } else {
        print(number)
    }
}
