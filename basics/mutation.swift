struct Point {
    var x: Double
    var y: Double

    mutating func translate(dx: Double, dy: Double) {
        x += dx
        y += dy
    }
}

func translate() {
    var p = Point(x: 1.0, y: 2.0)
    print("Before:", p.x, p.y)
    p.translate(dx: 3.5, dy: 4.5)
    print("After:", p.x, p.y)
}

translate()
