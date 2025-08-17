struct HeaderMap: ExpressibleByDictionaryLiteral {
    var headers: [String: String]

    init(dictionaryLiteral elements: (String, String)...) {
        self.headers = Dictionary(uniqueKeysWithValues: elements)
    }
}

func express() {
    let map: HeaderMap = ["Content-Type": "application/json", "Accept": "text/html"]
    print("Header count:", map.headers.count)
}

express()
