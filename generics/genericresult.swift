enum Outcome<Success, Failure: Error> {
    case ok(Success)
    case error(Failure)
}

enum SampleError: Error {
    case badInput
}

func evaluate() {
    let res: Outcome<Int, SampleError> = .ok(200)
    switch res {
    case .ok(let val): print("Success:", val)
    case .error(let err): print("Error:", err)
    }
}

evaluate()
