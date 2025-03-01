struct PointInspector {
    func inspect(point: (Int, Int)) {
        switch point {
        case (let x, 0):
            print("On X-axis with value \(x)")
        case (0, let y):
            print("On Y-axis with value \(y)")
        case let (x, y):
            print("Point at (\(x), \(y))")
        }
    }
}

func inspect() {
    let inspector = PointInspector()
    inspector.inspect(point: (5, 0))
    inspector.inspect(point: (3, 7))
}

inspect()
