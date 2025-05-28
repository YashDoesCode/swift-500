struct Counter {
    var value: Int = 0

    mutating func increment() {
        value += 1
    }

    mutating func reset() {
        value = 0
    }
}

func increment() {
    var c = Counter()
    c.increment()
    c.increment()
    print("Value:", c.value)
    c.reset()
    print("Reset:", c.value)
}

increment()
