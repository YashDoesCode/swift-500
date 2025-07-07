class Subject {
    private var observers: [(String) -> Void] = []

    func attach(observer: @escaping (String) -> Void) {
        observers.append(observer)
    }

    func notify(event: String) {
        for obs in observers {
            obs(event)
        }
    }
}

func broadcast() {
    let subject = Subject()
    subject.attach { print("Observer 1 received:", $0) }
    subject.attach { print("Observer 2 received:", $0) }
    subject.notify(event: "DATA_READY")
}

broadcast()
