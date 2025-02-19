struct Validator {
    func check(age: Int) -> Bool {
        guard age >= 0 else {
            return false
        }
        return age >= 18
    }
}

func validate() {
    let validator = Validator()
    print("Age 25 is adult:", validator.check(age: 25))
    print("Age 15 is adult:", validator.check(age: 15))
    print("Age -1 is adult:", validator.check(age: -1))
}

validate()
