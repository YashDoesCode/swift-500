protocol Resettable {
    mutating func reset()
}

struct GameScore: Resettable {
    var points: Int = 100
    mutating func reset() {
        points = 0
    }
}

func reset() {
    var score = GameScore()
    score.reset()
    print("Points after reset:", score.points)
}

reset()
