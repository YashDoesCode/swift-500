struct MultiGuard {
    func validate(name: String?, age: Int?) -> Bool {
        guard let n = name, !n.isEmpty, let a = age, a >= 0 else {
            return false
        }
        print("Valid profile:", n, a)
        return true
    }
}

func validate() {
    let mg = MultiGuard()
    print("Check 1:", mg.validate(name: "Yash", age: 25))
    print("Check 2:", mg.validate(name: "", age: 25))
}

validate()
