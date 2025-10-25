enum TransientError: Error { case networkGlitch }

func unstableOperation(attempt: inout Int) throws -> String {
    attempt += 1
    if attempt < 3 {
        throw TransientError.networkGlitch
    }
    return "Success on attempt \(attempt)"
}

func retry(times: Int) -> String? {
    var attempt = 0
    for _ in 1...times {
        do {
            return try unstableOperation(attempt: &attempt)
        } catch {
            print("Attempt \(attempt) failed, retrying...")
        }
    }
    return nil
}

func execute() {
    let result = retry(times: 4)
    print("Final result:", result ?? "none")
}

execute()
