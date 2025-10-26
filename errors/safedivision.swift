enum MathErr: Error { case divZero }

func safeDiv(a: Double, b: Double) -> Result<Double, MathErr> {
    guard b != 0.0 else { return .failure(.divZero) }
    return .success(a / b)
}

func divide() {
    let r1 = safeDiv(a: 10.0, b: 2.0)
    let r2 = safeDiv(a: 10.0, b: 0.0)
    print("r1:", r1)
    print("r2:", r2)
}

divide()
