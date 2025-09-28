class Mediator<Message> {
    private var recipients: [(Message) -> Void] = []

    func subscribe(_ handler: @escaping (Message) -> Void) {
        recipients.append(handler)
    }

    func broadcast(_ message: Message) {
        for r in recipients {
            r(message)
        }
    }
}

func broadcast() {
    let med = Mediator<String>()
    med.subscribe { print("Recipient got:", $0) }
    med.broadcast("Hello to all")
}

broadcast()
