protocol Vehicle {
    var wheels: Int { get }
}

protocol ElectricVehicle: Vehicle {
    var batteryCapacity: Double { get }
}

struct EVCar: ElectricVehicle {
    let wheels: Int = 4
    let batteryCapacity: Double = 75.0
}

func inspect() {
    let car = EVCar()
    print("Wheels:", car.wheels, "Battery:", car.batteryCapacity, "kWh")
}

inspect()
