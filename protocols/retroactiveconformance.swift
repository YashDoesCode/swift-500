protocol Loggable {
    func log()
}

extension Int: Loggable {
    func log() {
        print("Logged integer: \(self)")
    }
}

func log() {
    let number = 42
    number.log()
}

log()
