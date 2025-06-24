class Vehicle {
    var speed: Double = 0.0
    var description: String {
        return "Moving at \(speed) mph"
    }
}

class Car: Vehicle {
    var gear: Int = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

func drive() {
    let c = Car()
    c.speed = 55.0
    c.gear = 4
    print(c.description)
}

drive()
