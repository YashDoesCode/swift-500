class Shape {
    func draw() { print("Drawing Shape") }
}

class Polygon: Shape {
    let sides: Int
    init(sides: Int) { self.sides = sides }
    override func draw() { print("Drawing Polygon with \(sides) sides") }
}

class Triangle: Polygon {
    init() { super.init(sides: 3) }
}

func draw() {
    let t: Shape = Triangle()
    t.draw()
}

draw()
