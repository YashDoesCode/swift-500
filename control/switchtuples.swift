struct CoordinateMatcher {
    func locate(x: Int, y: Int) {
        switch (x, y) {
        case (0, 0):
            print("Origin")
        case (let cx, let cy) where cx > 0 && cy > 0:
            print("Quadrant 1: (\(cx), \(cy))")
        default:
            print("Other coordinate: (\(x), \(y))")
        }
    }
}

func locate() {
    let cm = CoordinateMatcher()
    cm.locate(x: 0, y: 0)
    cm.locate(x: 2, y: 4)
}

locate()
