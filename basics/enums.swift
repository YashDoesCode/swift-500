enum Compass: String {
    case north = "North"
    case south = "South"
    case east = "East"
    case west = "West"

    func heading() -> String {
        return "Heading \(rawValue)"
    }
}

func navigate() {
    let dir = Compass.north
    print(dir.heading())
    if let found = Compass(rawValue: "East") {
        print(found.heading())
    }
}

navigate()
