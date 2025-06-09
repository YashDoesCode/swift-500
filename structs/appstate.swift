struct State {
    var count: Int = 0
    var activeFilter: String = "all"

    func next(action: String) -> State {
        var copy = self
        switch action {
        case "INCREMENT":
            copy.count += 1
        case "RESET":
            copy.count = 0
        default:
            break
        }
        return copy
    }
}

func dispatch() {
    let s0 = State()
    let s1 = s0.next(action: "INCREMENT")
    let s2 = s1.next(action: "INCREMENT")
    print("Final Count:", s2.count)
}

dispatch()
