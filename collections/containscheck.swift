struct Validator {
    func hasNegative(numbers: [Int]) -> Bool {
        return numbers.contains { $0 < 0 }
    }
}

func validate() {
    let v = Validator()
    print("Has negative in [1, -2, 3]:", v.hasNegative(numbers: [1, -2, 3]))
    print("Has negative in [1, 2, 3]:", v.hasNegative(numbers: [1, 2, 3]))
}

validate()
