struct CountdownIterator: IteratorProtocol {
    var current: Int
    mutating func next() -> Int? {
        guard current > 0 else { return nil }
        defer { current -= 1 }
        return current
    }
}

struct CountdownSequence: Sequence {
    let start: Int
    func makeIterator() -> CountdownIterator {
        return CountdownIterator(current: start)
    }
}

func sequence() {
    let seq = CountdownSequence(start: 3)
    for n in seq {
        print("Seq:", n)
    }
}

sequence()
