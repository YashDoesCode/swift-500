struct Validator<T> {
    let rule: (T) -> Bool

    func validate(_ value: T) -> Bool {
        return rule(value)
    }
}

func validate() {
    let v = Validator<String> { $0.count >= 4 }
    print("Valid 'Swift':", v.validate("Swift"))
    print("Valid 'Go':", v.validate("Go"))
}

validate()
