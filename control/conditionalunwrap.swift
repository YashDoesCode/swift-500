struct UnwrappingGate {
    func process(first: String?, second: String?) {
        if let a = first, let b = second {
            print("Both present:", a, b)
        } else {
            print("At least one missing")
        }
    }
}

func process() {
    let gate = UnwrappingGate()
    gate.process(first: "Swift", second: "500")
    gate.process(first: "Swift", second: nil)
}

process()
