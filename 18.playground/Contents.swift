import Foundation

func passOrFail(writtenTestScore: Int, codingTestPassed: Bool) -> Bool {
    switch (writtenTestScore, codingTestPassed) {
    case (80..., true):
        return true
    default:
        return false
    }
}

passOrFail(writtenTestScore: 75, codingTestPassed: true)
passOrFail(writtenTestScore: 80, codingTestPassed: true)
