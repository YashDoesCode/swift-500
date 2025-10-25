enum FetchError: Error {
    case offline
}

func asyncFetch() async throws -> String {
    throw FetchError.offline
}

func run() {
    print("Async error simulation configured")
}

run()
