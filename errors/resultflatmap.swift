enum DivisionError: Error {
    case zero
}

func safeDivide(n: Int, d: Int) -> Result<Int, DivisionError> {
    guard d != 0 else { return .failure(.zero) }
    return .success(n / d)
}

func evaluate() {
    let initial: Result<Int, DivisionError> = .success(100)
    let divided = initial.flatMap { safeDivide(n: $0, d: 2) }
    print("FlatMapped result:", divided)
}

evaluate()
