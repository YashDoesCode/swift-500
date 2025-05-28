struct Geometry {
    static func distance(x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
        let dx = x2 - x1
        let dy = y2 - y1
        return (dx * dx + dy * dy).squareRoot()
    }
}

func calculate() {
    print("Distance:", Geometry.distance(x1: 0, y1: 0, x2: 3, y2: 4))
}

calculate()
