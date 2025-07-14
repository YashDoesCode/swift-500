class ChatMediator {
    private var users: [ChatUser] = []

    func register(user: ChatUser) {
        users.append(user)
    }

    func send(msg: String, from sender: ChatUser) {
        for u in users where u !== sender {
            u.receive(msg: msg)
        }
    }
}

class ChatUser {
    let name: String
    let mediator: ChatMediator

    init(name: String, mediator: ChatMediator) {
        self.name = name
        self.mediator = mediator
        mediator.register(user: self)
    }

    func send(msg: String) {
        mediator.send(msg: msg, from: self)
    }

    func receive(msg: String) {
        print("\(name) received: \(msg)")
    }
}

func chat() {
    let med = ChatMediator()
    let u1 = ChatUser(name: "Alice", mediator: med)
    let u2 = ChatUser(name: "Bob", mediator: med)
    u1.send(msg: "Hello Bob")
}

chat()
