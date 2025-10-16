enum SecurityError: Error {
    case unauthorized(role: String)
}

func accessAdmin(role: String) throws {
    guard role == "ADMIN" else { throw SecurityError.unauthorized(role: role) }
}

func access() {
    do {
        try accessAdmin(role: "GUEST")
    } catch SecurityError.unauthorized(let r) {
        print("Unauthorized role access:", r)
    } catch {
        print("Security error")
    }
}

access()
