class State {
    func handle(context: StateContext) {}
}

class ConcreteStateA: State {
    override func handle(context: StateContext) {
        print("State A handled, transitioning to State B")
        context.state = ConcreteStateB()
    }
}

class ConcreteStateB: State {
    override func handle(context: StateContext) {
        print("State B handled")
    }
}

class StateContext {
    var state: State
    init(state: State) { self.state = state }
    func request() { state.handle(context: self) }
}

func transition() {
    let ctx = StateContext(state: ConcreteStateA())
    ctx.request()
    ctx.request()
}

transition()
