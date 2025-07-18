class Vehicle {
    let wheels: Int
    init(wheels: Int) { self.wheels = wheels }
}

class MotorVehicle: Vehicle {
    let engineSize: Double
    init(wheels: Int, engineSize: Double) {
        self.engineSize = engineSize
        super.init(wheels: wheels)
    }
}

class Motorcycle: MotorVehicle {
    init(engineSize: Double) {
        super.init(wheels: 2, engineSize: engineSize)
    }
}

func inspect() {
    let moto = Motorcycle(engineSize: 650.0)
    print("Wheels:", moto.wheels, "Engine:", moto.engineSize, "cc")
}

inspect()
