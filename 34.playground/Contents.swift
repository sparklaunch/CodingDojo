import Foundation

let threeDimensionalArray: [[[Int]]] = {
    let inner = Array(repeating: 0, count: 3)
    let outer = Array(repeating: inner, count: 4)
    return Array(repeating: outer, count: 2)
}()

print(threeDimensionalArray)
