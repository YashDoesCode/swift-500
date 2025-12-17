func legacyCallback(completion: @escaping (Int) -> Void) {
    completion(100)
}

func modernAsync() async -> Int {
    return await withCheckedContinuation { continuation in
        legacyCallback { value in
            continuation.resume(returning: value)
        }
    }
}

func run() async {
    let res = await modernAsync()
    print("Resumed continuation:", res)
}

await run()
