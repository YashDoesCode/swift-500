enum Direction {
    case north
    case south
    case east
    case west
}

struct Navigator {
    func bearing(for dir: Direction) -> Int {
        switch dir {
        case .north: return 0
        case .east: return 90
        case .south: return 180
        case .west: return 270
        }
    }
}

func navigate() {
    let nav = Navigator()
    print("Bearing east:", nav.bearing(for: .east))
}

navigate()
