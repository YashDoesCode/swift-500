actor EventBus {
    private var listeners: [(String) -> Void] = []

    func subscribe(_ listener: @escaping (String) -> Void) {
        listeners.append(listener)
    }

    func publish(_ event: String) {
        for listener in listeners {
            listener(event)
        }
    }
}

func pubsub() async {
    let bus = EventBus()
    await bus.subscribe { print("Bus event:", $0) }
    await bus.publish("ALERT_FIRED")
}

await pubsub()
