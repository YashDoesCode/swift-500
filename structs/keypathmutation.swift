struct Car {
    var speed: Int
}

func accelerate() {
    var c = Car(speed: 60)
    let speedKey = \Car.speed
    c[keyPath: speedKey] = 90
    print("Speed:", c.speed)
}

accelerate()
