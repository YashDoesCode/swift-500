struct URLRequest {
    let url: String
    init?(url: String) {
        guard url.hasPrefix("https://") else { return nil }
        self.url = url
    }
}

func inspect() {
    let secure = URLRequest(url: "https://swift.org")
    let insecure = URLRequest(url: "http://swift.org")
    print("Secure exists:", secure != nil)
    print("Insecure exists:", insecure != nil)
}

inspect()
