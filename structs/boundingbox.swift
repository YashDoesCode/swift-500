struct BoundingBox {
    var minX: Double
    var minY: Double
    var maxX: Double
    var maxY: Double

    func contains(x: Double, y: Double) -> Bool {
        return x >= minX && x <= maxX && y >= minY && y <= maxY
    }
}

func test() {
    let box = BoundingBox(minX: 0, minY: 0, maxX: 10, maxY: 10)
    print("Contains (5, 5):", box.contains(x: 5, y: 5))
    print("Contains (15, 5):", box.contains(x: 15, y: 5))
}

test()
