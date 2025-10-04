enum FlowError: Error {
    case boom
}

func flow() throws {
    defer { print("Defer 1") }
    defer { print("Defer 2") }
    throw FlowError.boom
}

func execute() {
    do {
        try flow()
    } catch {
        print("Flow caught error")
    }
}

execute()
