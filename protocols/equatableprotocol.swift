struct Coordinate: Equatable {
    let x: Int
    let y: Int
}

func compare() {
    let c1 = Coordinate(x: 3, y: 4)
    let c2 = Coordinate(x: 3, y: 4)
    let c3 = Coordinate(x: 0, y: 0)
    print("c1 == c2:", c1 == c2)
    print("c1 == c3:", c1 == c3)
}

compare()
