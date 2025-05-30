struct Server {
    struct Port {
        let number: Int
        let secure: Bool
    }

    let host: String
    let port: Port

    func url() -> String {
        let proto = port.secure ? "https" : "http"
        return "\(proto)://\(host):\(port.number)"
    }
}

func connect() {
    let s = Server(host: "api.swift.org", port: Server.Port(number: 443, secure: true))
    print("URL:", s.url())
}

connect()
