struct Gate {
    func decide(allowed: Bool) -> String {
        return allowed ? "Access Granted" : "Access Denied"
    }
}

func decide() {
    let gate = Gate()
    print(gate.decide(allowed: true))
    print(gate.decide(allowed: false))
}

decide()
