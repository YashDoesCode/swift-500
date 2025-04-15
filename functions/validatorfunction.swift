struct StringValidator {
    typealias Rule = (String) -> Bool

    func validate(text: String, rules: [Rule]) -> Bool {
        for rule in rules {
            if !rule(text) {
                return false
            }
        }
        return true
    }
}

func validate() {
    let sv = StringValidator()
    let rules: [(String) -> Bool] = [
        { !$0.isEmpty },
        { $0.count >= 5 },
        { $0.contains("@") }
    ]
    print("Valid user@test:", sv.validate(text: "user@test", rules: rules))
    print("Valid user:", sv.validate(text: "user", rules: rules))
}

validate()
