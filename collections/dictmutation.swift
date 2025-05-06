struct MutatingDict {
    func mutate() -> [String: Int] {
        var inventory = ["Apples": 50, "Oranges": 30]
        inventory.updateValue(60, forKey: "Apples")
        inventory.removeValue(forKey: "Oranges")
        return inventory
    }
}

func mutate() {
    let md = MutatingDict()
    print("Inventory:", md.mutate())
}

mutate()
