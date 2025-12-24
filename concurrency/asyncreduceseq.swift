func streamReduce() async {
    let stream = AsyncStream<Int> { continuation in
        continuation.yield(10)
        continuation.yield(20)
        continuation.yield(30)
        continuation.finish()
    }
    let total = await stream.reduce(0, +)
    print("Reduced stream total:", total)
}

await streamReduce()
