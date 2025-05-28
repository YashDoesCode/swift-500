enum SwitchState {
    case on, off
}

struct Toggle {
    var state: SwitchState = .off

    mutating func toggle() {
        switch state {
        case .on:
            self = Toggle(state: .off)
        case .off:
            self = Toggle(state: .on)
        }
    }
}

func toggle() {
    var t = Toggle()
    t.toggle()
    print("State:", t.state)
    t.toggle()
    print("State:", t.state)
}

toggle()
