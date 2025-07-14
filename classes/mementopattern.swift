class Memento {
    let state: String
    init(state: String) { self.state = state }
}

class Originator {
    var state: String = ""

    func save() -> Memento {
        return Memento(state: state)
    }

    func restore(memento: Memento) {
        self.state = memento.state
    }
}

func restore() {
    let org = Originator()
    org.state = "Version 1"
    let saved = org.save()
    org.state = "Version 2"
    print("Current:", org.state)
    org.restore(memento: saved)
    print("Restored:", org.state)
}

restore()
