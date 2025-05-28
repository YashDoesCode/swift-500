struct Celsius {
    let temperature: Double

    init(fromFahrenheit fahrenheit: Double) {
        self.temperature = (fahrenheit - 32.0) / 1.8
    }

    init(fromKelvin kelvin: Double) {
        self.temperature = kelvin - 273.15
    }
}

func convert() {
    let freezing = Celsius(fromFahrenheit: 32.0)
    let absoluteZero = Celsius(fromKelvin: 0.0)
    print("Freezing C:", freezing.temperature)
    print("Absolute Zero C:", absoluteZero.temperature)
}

convert()
