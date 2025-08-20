enum NetworkError: Error {
    case timeout
    case notFound
}

func report(err: NetworkError) {
    switch err {
    case .timeout: print("Error: Request timed out")
    case .notFound: print("Error: Resource not found")
    }
}

func report() {
    report(err: .timeout)
}

report()
