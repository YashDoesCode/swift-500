enum Status {
    case active(String)
    case inactive
}

struct Engine {
    func run(status: Status) {
        guard case .active(let session) = status else {
            print("Engine inactive")
            return
        }
        print("Engine active for session:", session)
    }
}

func run() {
    let engine = Engine()
    engine.run(status: .active("sess-99"))
    engine.run(status: .inactive)
}

run()
