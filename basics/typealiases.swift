typealias Kilometers = Double
typealias Coordinates = (latitude: Double, longitude: Double)

struct Location {
    let name: String
    let point: Coordinates
    let elevation: Kilometers

    func summarize() {
        print(name, "at", point.latitude, point.longitude, "elevation:", elevation, "km")
    }
}

func summarize() {
    let loc = Location(name: "Summit", point: (37.7749, -122.4194), elevation: 1.25)
    loc.summarize()
}

summarize()
