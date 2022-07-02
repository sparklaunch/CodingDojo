import Foundation

precedencegroup ExponentiationPrecedence {
    higherThan: MultiplicationPrecedence
}

infix operator **: ExponentiationPrecedence

func **(radix: Int, power: Int) -> Int {
    precondition(power >= .zero)
    return Int(pow(Double(radix), Double(power)))
}

func squares(lowerBound: Int, upperBound: Int) -> [Int] {
    var result: [Int] = []
    for number in lowerBound...upperBound where (number != (lowerBound + 1)) && (number != (upperBound - 1)) {
        result.append(2 ** number)
    }
    return result
}

print(squares(lowerBound: 1, upperBound: 10))
