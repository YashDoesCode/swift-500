struct SequencePrinter {
    func iterate(items: [String]) {
        for (idx, val) in items.enumerated() {
            print("Index \(idx): \(val)")
        }
    }
}

func printSequence() {
    let sp = SequencePrinter()
    sp.iterate(items: ["One", "Two", "Three"])
}

printSequence()
