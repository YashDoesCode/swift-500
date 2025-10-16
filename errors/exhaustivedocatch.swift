enum FileOpError: Error {
    case readFailed
    case writeFailed
}

func operate(action: String) throws {
    if action == "READ" { throw FileOpError.readFailed }
    throw FileOpError.writeFailed
}

func operate() {
    do {
        try operate(action: "READ")
    } catch FileOpError.readFailed {
        print("Caught read failure")
    } catch FileOpError.writeFailed {
        print("Caught write failure")
    } catch {
        print("Other file op error")
    }
}

operate()
