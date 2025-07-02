class Temperature {
    let celsius: Double
    init?(celsius: Double) {
        guard celsius >= -273.15 else {
            return nil
        }
        self.celsius = celsius
    }
}

func inspect() {
    let valid = Temperature(celsius: 25.0)
    let invalid = Temperature(celsius: -300.0)
    print("Valid:", valid?.celsius ?? -999)
    print("Invalid exists:", invalid != nil)
}

inspect()
