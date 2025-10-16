enum ExecutionError: Error {
    case timedOut(milliseconds: Int)
}

func waitOperation(ms: Int) throws {
    if ms > 1000 { throw ExecutionError.timedOut(milliseconds: ms) }
}

func execute() {
    do {
        try waitOperation(ms: 2500)
    } catch ExecutionError.timedOut(let ms) {
        print("Operation timed out after \(ms)ms")
    } catch {
        print("Execution error")
    }
}

execute()
