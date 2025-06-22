struct Fraction {
    let numerator: Int
    let denominator: Int

    func multiply(by other: Fraction) -> Fraction {
        return Fraction(numerator: numerator * other.numerator, denominator: denominator * other.denominator)
    }
}

func multiply() {
    let f1 = Fraction(numerator: 1, denominator: 2)
    let f2 = Fraction(numerator: 3, denominator: 4)
    let result = f1.multiply(by: f2)
    print("Result:", result.numerator, "/", result.denominator)
}

multiply()
