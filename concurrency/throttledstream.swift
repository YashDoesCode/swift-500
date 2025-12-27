func throttled() -> AsyncStream<Int> {
    return AsyncStream { continuation in
        continuation.yield(1)
        continuation.yield(2)
        continuation.finish()
    }
}

func stream() async {
    for await item in throttled() {
        print("Throttled item:", item)
    }
}

await stream()
