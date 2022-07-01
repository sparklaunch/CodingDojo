import Foundation

struct DateTime: Identifiable, Equatable {
    let id: UUID = .init()
    let year: Int
    let month: Int
    var monthString: String {
        String(month).padded()
    }
    let day: Int
    var dayString: String {
        String(day).padded()
    }
    let hour: Int
    var hourString: String {
        String(hour).padded()
    }
    let minute: Int
    var minuteString: String {
        String(minute).padded()
    }
    let second: Int
    var secondString: String {
        String(second).padded()
    }
    func dateAndTime() {
        print("\(year)/\(monthString)/\(dayString) \(hourString):\(minuteString):\(secondString)")
    }
}

extension String {
    func padded() -> Self {
        switch self.count {
        case 1:
            return "0" + self
        default:
            return self
        }
    }
}

let dateTime = DateTime(year: 2000, month: 9, day: 9, hour: 11, minute: 43, second: 9)
dateTime.dateAndTime()
