import Foundation

func averageScore(for scores: (korean: Int, english: Int, math: Int, science: Int)) -> Int {
    let mirror = Mirror(reflecting: scores)
    let totalScore = mirror.children.map {
        $1 as? Int ?? .zero
    }.reduce(into: .zero) { partialResult, score in
        partialResult += score
    }
    return Int((Double(totalScore) / 4).rounded(.down))
}

averageScore(for: (korean: 83, english: 92, math: 87, science: 90))
