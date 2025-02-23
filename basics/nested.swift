struct Network {
    enum Status {
        case connected
        case disconnected
    }

    struct Response {
        let status: Status
        let code: Int
    }

    func ping() -> Response {
        return Response(status: .connected, code: 200)
    }
}

func ping() {
    let net = Network()
    let resp = net.ping()
    print("Response code:", resp.code)
}

ping()
