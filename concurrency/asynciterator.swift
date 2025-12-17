struct StepIterator: AsyncIteratorProtocol {
    var step = 0
    mutating func next() async -> String? {
        guard step < 2 else { return nil }
        step += 1
        return "Step \(step)"
    }
}

func iterate() async {
    var iter = StepIterator()
    while let s = await iter.next() {
        print("Iterated:", s)
    }
}

await iterate()
