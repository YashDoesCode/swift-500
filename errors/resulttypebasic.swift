enum ParseError: Error {
    case badFormat
}

func parse(text: String) -> Result<Int, ParseError> {
    if let n = Int(text) {
        return .success(n)
    }
    return .failure(.badFormat)
}

func parse() {
    let res = parse(text: "123")
    switch res {
    case .success(let val): print("Success:", val)
    case .failure(let err): print("Failure:", err)
    }
}

parse()
