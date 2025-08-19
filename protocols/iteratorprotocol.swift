struct Countdown: IteratorProtocol {
    var current: Int

    mutating func next() -> Int? {
        guard current > 0 else { return nil }
        defer { current -= 1 }
        return current
    }
}

func iterate() {
    var iter = Countdown(current: 3)
    while let n = iter.next() {
        print("Countdown:", n)
    }
}

iterate()
