func streamMap() async {
    let stream = AsyncStream<Int> { continuation in
        continuation.yield(1)
        continuation.yield(2)
        continuation.yield(3)
        continuation.finish()
    }
    for await mapped in stream.map({ $0 * 10 }) {
        print("Mapped stream item:", mapped)
    }
}

await streamMap()
