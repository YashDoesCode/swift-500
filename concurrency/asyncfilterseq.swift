func streamFilter() async {
    let stream = AsyncStream<Int> { continuation in
        continuation.yield(1)
        continuation.yield(2)
        continuation.yield(3)
        continuation.yield(4)
        continuation.finish()
    }
    for await even in stream.filter({ $0 % 2 == 0 }) {
        print("Filtered stream even:", even)
    }
}

await streamFilter()
