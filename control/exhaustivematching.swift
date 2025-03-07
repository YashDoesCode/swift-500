enum NetworkEvent {
    case connected
    case error(Int)
    case message(String)
}

struct Dispatcher {
    func dispatch(event: NetworkEvent) {
        switch event {
        case .connected:
            print("Network live")
        case .error(let code):
            print("Network error:", code)
        case .message(let text):
            print("Incoming payload:", text)
        }
    }
}

func dispatch() {
    let disp = Dispatcher()
    disp.dispatch(event: .message("ping"))
    disp.dispatch(event: .error(503))
}

dispatch()
