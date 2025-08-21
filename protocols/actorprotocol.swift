protocol ServerProtocol {
    nonisolated func status() -> String
}

actor ServerActor: ServerProtocol {
    nonisolated func status() -> String {
        return "Online"
    }
}

func inspect() {
    let s: ServerProtocol = ServerActor()
    print("Server status:", s.status())
}

inspect()
