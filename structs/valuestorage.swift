struct Coordinate {
    var x: Double
    var y: Double
}

func demonstrate() {
    var p1 = Coordinate(x: 10.0, y: 20.0)
    var p2 = p1
    p2.x = 99.0
    print("p1.x:", p1.x)
    print("p2.x:", p2.x)
}

demonstrate()
