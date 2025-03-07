struct Collector {
    func collect() {
        let mixed: [Any] = ["Swift", 42, "Code", 99]
        for case let text as String in mixed {
            print("Found text:", text)
        }
    }
}

func collect() {
    let c = Collector()
    c.collect()
}

collect()
