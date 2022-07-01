import Foundation

enum ScoreError: Error {
    case negativeScore(String)
    case scoreOutOfRange(String)
}

func passOrFail(for scores: (korean: Int, english: Int, math: Int, science: Int)) throws -> Bool {
    let intScores = Array(Mirror(reflecting: scores).children.map { $1 as? Int ?? .zero})
    guard intScores.allSatisfy({
        $0 >= .zero
    }) else {
        throw ScoreError.negativeScore("Scores cannot be below zero!!")
    }
    guard intScores.allSatisfy({
        $0 <= 100
    }) else {
        throw ScoreError.scoreOutOfRange("Scores cannot be over 100!!")
    }
    let totalScore = intScores.reduce(.zero, +)
    return Double(totalScore) / 4 >= 80
}

do {
    try passOrFail(for: (korean: 89, english: 72, math: 93, science: 82))
} catch {
    print(error)
}
