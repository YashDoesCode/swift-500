enum ProcessError: Error {
    case failed
}

func runTask() throws {
    throw ProcessError.failed
}

func execute() {
    do {
        try runTask()
    } catch {
        print("Task error captured:", error)
    }
}

execute()
