enum InitError: Error {
    case invalidRange
}

struct PortNumber {
    let value: Int
    init(value: Int) throws {
        guard value > 0 && value <= 65535 else { throw InitError.invalidRange }
        self.value = value
    }
}

func create() {
    do {
        let p = try PortNumber(value: 8080)
        print("Port created:", p.value)
        let _ = try PortNumber(value: 70000)
    } catch {
        print("Caught init error:", error)
    }
}

create()
