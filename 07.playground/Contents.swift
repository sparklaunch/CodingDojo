import Foundation

func passOrFail(for scores: (korean: Int, english: Int, math: Int, science: Int)) -> Bool {
    let mirror = Mirror(reflecting: scores)
    let intScores = mirror.children.map { $1 as? Int ?? .zero }
    return intScores.allSatisfy { $0 >= 50 }
}

passOrFail(for: (korean: 92, english: 47, math: 86, science: 81))
