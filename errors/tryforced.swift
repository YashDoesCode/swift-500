enum SafeError: Error {
    case unreachable
}

func guaranteed() throws -> Int {
    return 42
}

func evaluate() {
    let val = try! guaranteed()
    print("Guaranteed value:", val)
}

evaluate()
