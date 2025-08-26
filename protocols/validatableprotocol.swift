protocol Validatable {
    func isValid() -> Bool
}

struct EmailInput: Validatable {
    let email: String
    func isValid() -> Bool {
        return email.contains("@") && email.contains(".")
    }
}

func validate() {
    let e: Validatable = EmailInput(email: "test@example.com")
    print("Email valid:", e.isValid())
}

validate()
