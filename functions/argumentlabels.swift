struct Messenger {
    func send(message: String, to recipient: String, from sender: String) {
        print("From:", sender, "To:", recipient, "Message:", message)
    }
}

func send() {
    let m = Messenger()
    m.send(message: "Ready", to: "Alice", from: "Bob")
}

send()
