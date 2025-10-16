enum HTTPStatusError: Error {
    case clientError(Int)
    case serverError(Int)
}

func verify(statusCode: Int) throws {
    if statusCode >= 500 { throw HTTPStatusError.serverError(statusCode) }
    if statusCode >= 400 { throw HTTPStatusError.clientError(statusCode) }
}

func check() {
    do {
        try verify(statusCode: 503)
    } catch HTTPStatusError.serverError(let code) {
        print("Server error:", code)
    } catch {
        print("Other status error")
    }
}

check()
