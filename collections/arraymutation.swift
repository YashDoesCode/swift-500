struct ArrayMutator {
    func mutate() -> [String] {
        var items = ["A", "B", "C"]
        items.append("D")
        items.insert("Start", at: 0)
        items.remove(at: 2)
        return items
    }
}

func mutate() {
    let m = ArrayMutator()
    print("Mutated:", m.mutate())
}

mutate()
