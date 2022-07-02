import Foundation

enum BalanceError: Error {
    case ageOutOfBound(String)
}

func cardBalance(for age: Int) throws -> Int {
    var balance = 9000
    switch age {
    case 7...12:
        balance -= 650
    case 13...18:
        balance -= 1050
    case 19...:
        balance -= 1250
    default:
        throw BalanceError.ageOutOfBound("Age cannot be below 7!!")
    }
    return balance
}

do {
    try cardBalance(for: 17)
} catch {
    print(error)
}
