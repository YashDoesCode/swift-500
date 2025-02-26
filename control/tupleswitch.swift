struct Radar {
    func track(point: (Int, Int)) {
        switch point {
        case (0, 0):
            print("At origin")
        case (_, 0):
            print("On X-axis")
        case (0, _):
            print("On Y-axis")
        case (-2...2, -2...2):
            print("Near center")
        default:
            print("Outer zone")
        }
    }
}

func track() {
    let radar = Radar()
    radar.track(point: (0, 0))
    radar.track(point: (1, 0))
    radar.track(point: (1, 1))
}

track()
