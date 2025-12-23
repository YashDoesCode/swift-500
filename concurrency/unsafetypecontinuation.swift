func unsafeBridged() async -> Int {
    return await withUnsafeContinuation { continuation in
        continuation.resume(returning: 777)
    }
}

func run() async {
    let v = await unsafeBridged()
    print("Unsafe continuation value:", v)
}

await run()
