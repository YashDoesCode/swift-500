class Observable<T> {
    var value: T {
        didSet {
            for listener in listeners {
                listener(value)
            }
        }
    }
    private var listeners: [(T) -> Void] = []

    init(value: T) { self.value = value }

    func observe(_ listener: @escaping (T) -> Void) {
        listeners.append(listener)
    }
}

func observe() {
    let obs = Observable(value: "initial")
    obs.observe { print("Observer heard:", $0) }
    obs.value = "updated"
}

observe()
