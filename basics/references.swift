class Counter {
    var value: Int = 0

    func increment() {
        value += 1
    }
}

func track() {
    let first = Counter()
    let second = first
    first.increment()
    second.increment()
    print("First value:", first.value)
    print("Second value:", second.value)
}

track()
