struct SequenceWalker {
    func walk() {
        let closed = 1...5
        print("Closed range contains 3:", closed.contains(3))
        let halfOpen = 1..<5
        print("Half-open contains 5:", halfOpen.contains(5))
        let count = (1...10).reduce(0, +)
        print("Sum 1..10:", count)
    }
}

func walk() {
    let walker = SequenceWalker()
    walker.walk()
}

walk()
