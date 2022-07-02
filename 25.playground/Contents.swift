import Foundation

struct Card {
    private(set) var balance: Int
    init(_ balance: Int) {
        self.balance = balance
        print("Initial Balance: \(balance)")
    }
    mutating func use() {
        balance -= 1350
        guard balance >= .zero else {
            return
        }
        print("Balance: \(balance)")
    }
}

var card = Card(10000)

card.use()
card.use()
card.use()
card.use()
card.use()
card.use()
card.use()
card.use()
