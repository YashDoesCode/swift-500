class Throttler {
    var allowed: Bool = true

    func run(action: () -> Void) {
        if allowed {
            action()
            allowed = false
        } else {
            print("Action throttled")
        }
    }

    func reset() {
        allowed = true
    }
}

func throttle() {
    let t = Throttler()
    t.run { print("First call accepted") }
    t.run { print("Second call attempted") }
    t.reset()
    t.run { print("Third call accepted") }
}

throttle()
