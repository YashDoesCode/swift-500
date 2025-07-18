class NumberCollection: Sequence, IteratorProtocol {
    private var current = 1
    private let limit: Int

    init(limit: Int) { self.limit = limit }

    func next() -> Int? {
        guard current <= limit else { return nil }
        defer { current += 1 }
        return current
    }
}

func iterate() {
    let seq = NumberCollection(limit: 3)
    for n in seq {
        print("Sequence num:", n)
    }
}

iterate()
