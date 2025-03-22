enum MachineState {
    case stopped
    case running
    case paused
}

class Machine {
    var state: MachineState = .stopped

    func transition(to next: MachineState) {
        switch (state, next) {
        case (.stopped, .running):
            state = .running
            print("Machine started")
        case (.running, .paused):
            state = .paused
            print("Machine paused")
        case (.paused, .running):
            state = .running
            print("Machine resumed")
        case (_, .stopped):
            state = .stopped
            print("Machine stopped")
        default:
            print("Invalid transition")
        }
    }
}

func transition() {
    let m = Machine()
    m.transition(to: .running)
    m.transition(to: .paused)
    m.transition(to: .stopped)
}

transition()
