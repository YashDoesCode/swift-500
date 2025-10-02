enum MathError: Error {
    case divideByZero
}

func divide(a: Int, b: Int) throws -> Int {
    guard b != 0 else { throw MathError.divideByZero }
    return a / b
}

func calculate() {
    do {
        let result = try divide(a: 10, b: 2)
        print("Result:", result)
    } catch {
        print("Caught error:", error)
    }
}

calculate()
