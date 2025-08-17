struct SecretToken: CustomDebugStringConvertible {
    let token: String

    var debugDescription: String {
        return "SecretToken(length: \(token.count), masked)"
    }
}

func debug() {
    let s = SecretToken(token: "sk_live_94012")
    print(String(reflecting: s))
}

debug()
