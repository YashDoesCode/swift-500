class Counter {
    var count: Int = 0
}

func demonstrate() {
    let c1 = Counter()
    let c2 = c1
    c2.count = 42
    print("c1 count:", c1.count)
    print("c2 count:", c2.count)
}

demonstrate()
