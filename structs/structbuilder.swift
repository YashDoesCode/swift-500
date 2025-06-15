struct Request {
    var url: String
    var method: String = "GET"
    var headers: [String: String] = [:]

    func with(header key: String, value: String) -> Request {
        var copy = self
        copy.headers[key] = value
        return copy
    }
}

func build() {
    let req = Request(url: "https://api.com").with(header: "Auth", value: "Bearer token")
    print("Method:", req.method, "Headers:", req.headers)
}

build()
