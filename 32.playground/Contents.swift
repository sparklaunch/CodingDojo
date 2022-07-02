import Foundation

let words = ["alpha", "bravo", "charlie", "delta", "echo", "foxtrot", "golf", "hotel", "india"]

let result = words.filter { $0.count == 5 }

print(result)
