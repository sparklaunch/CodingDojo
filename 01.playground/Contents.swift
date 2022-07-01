import Foundation

func noisiestFloor(distanceFromRoad: Double) -> Int {
    Int((0.2467 * distanceFromRoad + 4.159).rounded(.down))
}

noisiestFloor(distanceFromRoad: 12)
