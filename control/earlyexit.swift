struct GuardExample {
    func divide(numerator: Int, denominator: Int) -> Int? {
        guard denominator != 0 else {
            print("Cannot divide by zero")
            return nil
        }
        return numerator / denominator
    }
}

func divide() {
    let example = GuardExample()
    print("Result:", example.divide(numerator: 10, denominator: 2) ?? -1)
    print("Result:", example.divide(numerator: 10, denominator: 0) ?? -1)
}

divide()
