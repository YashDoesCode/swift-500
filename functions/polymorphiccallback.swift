class Notifier {
    var callback: ((String) -> Void)?

    func send(msg: String) {
        callback?(msg)
    }
}

class EmailNotifier: Notifier {
    override func send(msg: String) {
        print("Email sending...")
        super.send(msg: msg)
    }
}

func notify() {
    let notifier = EmailNotifier()
    notifier.callback = { print("Delivered message:", $0) }
    notifier.send(msg: "Alert")
}

notify()
