class Shape {
    func area() -> Double {
        return 0.0
    }
}

class Rectangle: Shape {
    let width: Double
    let height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    override func area() -> Double {
        return width * height
    }
}

class Circle: Shape {
    let radius: Double

    init(radius: Double) {
        self.radius = radius
    }

    override func area() -> Double {
        return 3.1415926535 * radius * radius
    }
}

func calculate() {
    let shapes: [Shape] = [
        Rectangle(width: 4.0, height: 5.0),
        Circle(radius: 3.0)
    ]
    for shape in shapes {
        print("Calculated Area:", shape.area())
    }
}

calculate()
