struct Coordinate {
    func origin() -> (x: Int, y: Int, label: String) {
        return (0, 0, "center")
    }
}

func locate() {
    let coord = Coordinate()
    let point = coord.origin()
    print("Label:", point.label, "X:", point.x, "Y:", point.y)
    let (x, y, _) = point
    print("Deconstructed:", x, y)
}

locate()
