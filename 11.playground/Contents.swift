import Foundation

let numbers = [-32, 75, 97, -10, 9, 32, 4, -15, 0, 76, 14, 2]

for (index, number) in numbers.enumerated() where index % 2 == 1 {
    print(number)
}
