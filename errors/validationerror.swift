enum FormError: Error {
    case invalidEmail
    case weakPassword
}

func validate(email: String) throws {
    guard email.contains("@") else { throw FormError.invalidEmail }
}

func validate() {
    do {
        try validate(email: "bademail")
    } catch {
        print("Validation error:", error)
    }
}

validate()
