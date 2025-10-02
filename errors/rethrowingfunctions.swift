func executeTwice(action: () throws -> Void) rethrows {
    try action()
    try action()
}

func run() {
    do {
        try executeTwice {
            print("Executing action")
        }
    } catch {
        print("Error in action")
    }
}

run()
