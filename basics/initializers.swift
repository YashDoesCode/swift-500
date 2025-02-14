class Vehicle {
    let make: String
    let model: String

    init(make: String, model: String) {
        self.make = make
        self.model = model
    }

    func describe() -> String {
        return "\(make) \(model)"
    }
}

class ElectricVehicle: Vehicle {
    let range: Int

    init(make: String, model: String, range: Int) {
        self.range = range
        super.init(make: make, model: model)
    }

    override func describe() -> String {
        return super.describe() + " (Range: \(range) miles)"
    }
}

func describe() {
    let car = ElectricVehicle(make: "Tesla", model: "Model S", range: 400)
    print(car.describe())
}

describe()
