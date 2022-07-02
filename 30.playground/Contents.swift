import Foundation

for number in 1...100 {
    switch (number.isMultiple(of: 2), number.isMultiple(of: 11)) {
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
