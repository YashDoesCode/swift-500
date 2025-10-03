enum ActionError: Error {
    case failure
}

func processResource() throws {
    print("Resource opened")
    defer { print("Resource closed gracefully") }
    throw ActionError.failure
}

func execute() {
    do {
        try processResource()
    } catch {
        print("Handled action error:", error)
    }
}

execute()
