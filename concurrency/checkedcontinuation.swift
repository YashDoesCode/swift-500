enum BridgeError: Error { case failure }

func fallibleAsync() async throws -> String {
    return try await withCheckedThrowingContinuation { continuation in
        continuation.resume(returning: "Bridge Success")
    }
}

func run() async {
    if let val = try? await fallibleAsync() {
        print("Value:", val)
    }
}

await run()
