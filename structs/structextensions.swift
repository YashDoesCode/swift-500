struct Measurement {
    let value: Double
}

extension Measurement {
    func inKilometers() -> Double {
        return value / 1000.0
    }
}

func measure() {
    let m = Measurement(value: 5280.0)
    print("KM:", m.inKilometers())
}

measure()
