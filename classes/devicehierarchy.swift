class Device {
    let hostname: String
    init(hostname: String) { self.hostname = hostname }
    func ping() -> String { return "Pong from \(hostname)" }
}

class SmartDevice: Device {
    let ip: String
    init(hostname: String, ip: String) {
        self.ip = ip
        super.init(hostname: hostname)
    }
    override func ping() -> String { return super.ping() + " (\(ip))" }
}

func ping() {
    let d: Device = SmartDevice(hostname: "hub.local", ip: "192.168.1.50")
    print(d.ping())
}

ping()
