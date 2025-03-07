enum ResultState {
    case success(Int)
    case failure(String)
}

struct Handler {
    func handle(state: ResultState) {
        if case .success(let code) = state {
            print("Success with code \(code)")
        } else {
            print("Failure state")
        }
    }
}

func handle() {
    let handler = Handler()
    handler.handle(state: .success(200))
    handler.handle(state: .failure("timeout"))
}

handle()
