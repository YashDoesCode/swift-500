struct Calculator {
    func evaluate(first: Int, second: Int) {
        print("Sum:", first + second)
        print("Difference:", first - second)
        print("Product:", first * second)
        print("Quotient:", first / second)
        print("Remainder:", first % second)
    }
}

func calculate() {
    let calc = Calculator()
    calc.evaluate(first: 42, second: 9)
}

calculate()
