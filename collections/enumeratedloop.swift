struct Enumerator {
    func display(list: [String]) {
        for (i, v) in list.enumerated() {
            print("Item #\(i): \(v)")
        }
    }
}

func enumerate() {
    let e = Enumerator()
    e.display(list: ["Alpha", "Beta", "Gamma"])
}

enumerate()
