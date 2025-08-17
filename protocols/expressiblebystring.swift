struct URLPath: ExpressibleByStringLiteral {
    let raw: String

    init(stringLiteral value: String) {
        self.raw = value
    }
}

func express() {
    let path: URLPath = "/api/v1/users"
    print("URL Path:", path.raw)
}

express()
