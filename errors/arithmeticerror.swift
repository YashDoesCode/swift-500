enum NumericError: Error {
    case overflow
    case underflow
}

func safeMultiply(a: Int, b: Int) throws -> Int {
    let (result, overflow) = a.multipliedReportingOverflow(by: b)
    if overflow { throw NumericError.overflow }
    return result
}

func multiply() {
    do {
        let res = try safeMultiply(a: 10, b: 20)
        print("Multiplied:", res)
    } catch {
        print("Numeric error:", error)
    }
}

multiply()
