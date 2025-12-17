func makeNumbers() -> AsyncStream<Int> {
    return AsyncStream { continuation in
        continuation.yield(10)
        continuation.yield(20)
        continuation.yield(30)
        continuation.finish()
    }
}

func stream() async {
    for await val in makeNumbers() {
        print("Stream value:", val)
    }
}

await stream()
