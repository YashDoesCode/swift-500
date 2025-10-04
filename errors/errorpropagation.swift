enum LayerError: Error {
    case lowLevel
}

func lowLevel() throws {
    throw LayerError.lowLevel
}

func midLevel() throws {
    try lowLevel()
}

func highLevel() throws {
    try midLevel()
}

func run() {
    do {
        try highLevel()
    } catch {
        print("Caught at top level:", error)
    }
}

run()
