actor Service {
    let identifier: String

    init(identifier: String) {
        self.identifier = identifier
    }

    nonisolated func getID() -> String {
        return identifier
    }
}

func inspect() {
    let s = Service(identifier: "srv-99")
    print("Service ID without await:", s.getID())
}

inspect()
