enum AuthError: Error {
    case invalidCredentials(user: String)
    case expiredSession
}

func login(user: String) throws {
    throw AuthError.invalidCredentials(user: user)
}

func authenticate() {
    do {
        try login(user: "admin")
    } catch AuthError.invalidCredentials(let user) {
        print("Auth failed for user:", user)
    } catch {
        print("Session error")
    }
}

authenticate()
