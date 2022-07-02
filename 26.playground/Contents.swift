import Foundation

for number in 1...100 where String(number).hasSuffix("3") {
    print(number, terminator: " ")
}
