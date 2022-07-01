import Foundation

func passOrFail(for scores: (korean: Int, english: Int, math: Int, science: Int)) -> Bool {
    guard case (90..., 81..., 86..., 80...) = scores else {
        return false
    }
    return true
}

passOrFail(for: (korean: 90, english: 81, math: 86, science: 80))
