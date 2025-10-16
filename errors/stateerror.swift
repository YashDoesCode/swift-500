enum StateMachineError: Error {
    case invalidTransition(from: String, to: String)
}

func transition(from: String, to: String) throws {
    if from == "STOPPED" && to == "PAUSED" {
        throw StateMachineError.invalidTransition(from: from, to: to)
    }
}

func transition() {
    do {
        try transition(from: "STOPPED", to: "PAUSED")
    } catch StateMachineError.invalidTransition(let from, let to) {
        print("Invalid transition \(from) -> \(to)")
    } catch {
        print("State error")
    }
}

transition()
