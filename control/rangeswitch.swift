struct SpeedControl {
    func classify(speed: Double) -> String {
        switch speed {
        case ..<0:
            return "Reverse"
        case 0:
            return "Stopped"
        case 0.1...60:
            return "City"
        case 60.1...120:
            return "Highway"
        default:
            return "Excessive"
        }
    }
}

func classify() {
    let sc = SpeedControl()
    print(sc.classify(speed: 45.0))
    print(sc.classify(speed: 85.0))
}

classify()
