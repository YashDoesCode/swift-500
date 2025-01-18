struct Gate {
    func evaluate(left: Bool, right: Bool) {
        print("AND:", left && right)
        print("OR:", left || right)
        print("NOT Left:", !left)
        print("XOR:", left != right)
    }
}

func analyze() {
    let gate = Gate()
    gate.evaluate(left: true, right: false)
}

analyze()
