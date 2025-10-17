enum InternalError: Error { case low }
enum ExternalError: Error { case high }

func complexOperation() throws {
    do {
        throw InternalError.low
    } catch {
        print("Handled inner:", error)
        throw ExternalError.high
    }
}

func execute() {
    do {
        try complexOperation()
    } catch {
        print("Handled outer:", error)
    }
}

execute()
