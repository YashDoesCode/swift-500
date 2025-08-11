protocol OptionalNotifier {
    func sendRequired(msg: String)
    func sendOptional(msg: String)
}

extension OptionalNotifier {
    func sendOptional(msg: String) {
        print("Default optional no-op")
    }
}

struct BasicNotifier: OptionalNotifier {
    func sendRequired(msg: String) {
        print("Required:", msg)
    }
}

func notify() {
    let n = BasicNotifier()
    n.sendRequired(msg: "Important alert")
    n.sendOptional(msg: "Low priority")
}

notify()
