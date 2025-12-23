final class DataPacket: Sendable {
    let payload: String
    init(payload: String) { self.payload = payload }
}

func send() async {
    let packet = DataPacket(payload: "Secure Thread Boundary")
    let task = Task { packet.payload }
    print(await task.value)
}

await send()
