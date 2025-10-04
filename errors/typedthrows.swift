enum MathFailure: Error {
    case negativeInput
}

func squareRoot(n: Double) throws(MathFailure) -> Double {
    guard n >= 0 else { throw MathFailure.negativeInput }
    return n.squareRoot()
}

func calculate() {
    do {
        let r = try squareRoot(n: 16.0)
        print("Square root:", r)
    } catch {
        print("Math failure:", error)
    }
}

calculate()
