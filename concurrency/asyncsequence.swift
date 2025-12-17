struct CounterAsyncSequence: AsyncSequence {
    typealias Element = Int

    struct AsyncIterator: AsyncIteratorProtocol {
        var current = 1
        mutating func next() async -> Int? {
            guard current <= 3 else { return nil }
            defer { current += 1 }
            return current
        }
    }

    func makeAsyncIterator() -> AsyncIterator {
        return AsyncIterator()
    }
}

func iterate() async {
    let seq = CounterAsyncSequence()
    for await n in seq {
        print("Async num:", n)
    }
}

await iterate()
