struct TokenBucket {
    var capacity: Int
    var tokens: Int

    mutating func take() -> Bool {
        if tokens > 0 {
            tokens -= 1
            return true
        }
        return false
    }
}

func rateLimit() {
    var tb = TokenBucket(capacity: 2, tokens: 2)
    print("Token 1:", tb.take())
    print("Token 2:", tb.take())
    print("Token 3:", tb.take())
}

rateLimit()
