struct Inverter {
    func reverse(items: [String]) -> [String] {
        return Array(items.reversed())
    }
}

func reverse() {
    let inv = Inverter()
    print("Reversed:", inv.reverse(items: ["First", "Second", "Third"]))
}

reverse()
