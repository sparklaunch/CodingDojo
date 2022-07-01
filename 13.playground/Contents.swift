import Foundation

enum ShuffleError: Error {
    case unknownError(String)
}

func printShuffledString(first: String, second: String) throws {
    var index = 0
    repeat {
        switch index % 2 {
        case 0:
            let firstIndex = first.index(first.startIndex, offsetBy: index)
            print(first[firstIndex], terminator: "")
        case 1:
            let secondIndex = second.index(second.startIndex, offsetBy: index)
            print(second[secondIndex], terminator: "")
        default:
            throw ShuffleError.unknownError("Unknown error occurred!!")
        }
        index += 1
    } while index <= min(first.count, second.count)
}

do {
    try printShuffledString(first: "apple", second: "strawberry")
} catch {
    print(error)
}
