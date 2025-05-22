struct Device {
    let model: String
    let serial: Int
    var active: Bool
}

func initialize() {
    let d = Device(model: "MacBook", serial: 40491, active: true)
    print("Device:", d.model, d.serial, d.active)
}

initialize()
