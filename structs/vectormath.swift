struct Vector2D {
    var x: Double
    var y: Double

    static func + (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
    }

    static func * (left: Vector2D, scalar: Double) -> Vector2D {
        return Vector2D(x: left.x * scalar, y: left.y * scalar)
    }
}

func evaluate() {
    let v1 = Vector2D(x: 1, y: 2)
    let v2 = Vector2D(x: 3, y: 4)
    let sum = v1 + v2
    let scaled = sum * 2.0
    print("Scaled Sum:", scaled.x, scaled.y)
}

evaluate()
