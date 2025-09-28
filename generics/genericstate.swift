class StateHolder<S> {
    private var state: S

    init(initialState: S) {
        self.state = initialState
    }

    func update(_ transform: (S) -> S) {
        self.state = transform(state)
    }

    func current() -> S {
        return state
    }
}

func state() {
    let holder = StateHolder(initialState: 100)
    holder.update { $0 + 25 }
    print("Current state:", holder.current())
}

state()
