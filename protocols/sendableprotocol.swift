struct ImmutablePayload: Sendable {
    let id: Int
    let data: String
}

func transfer() {
    let payload = ImmutablePayload(id: 1, data: "Safe across concurrency domains")
    print("Sendable Payload:", payload.data)
}

transfer()
