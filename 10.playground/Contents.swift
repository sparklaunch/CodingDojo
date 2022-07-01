import Foundation

let years = Array(stride(from: 2011, through: 2018, by: 1))
let populations = [
    10249679,
    10195318,
    10143645,
    10103233,
    10022181,
    9930616,
    9857426,
    9838892
]

enum InputError: Error {
    case negativeYear(String)
    case outOfRange(String)
}

func printData(forRecentYears: Int) throws {
    guard forRecentYears >= .zero else {
        throw InputError.negativeYear("Year cannot be a negative value!!")
    }
    guard forRecentYears <= years.count else {
        throw InputError.outOfRange("Year out of range!!")
    }
    let reversedYears = Array(years.reversed())
    let reversedPopulations = Array(populations.reversed())
    for index in 0..<forRecentYears {
        print("Seoul has a population of \(reversedPopulations[index]) in \(reversedYears[index])")
    }
}

do {
    try printData(forRecentYears: 3)
} catch {
    print(error)
}
