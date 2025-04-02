func compose<A, B, C>(_ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> (A) -> C {
    return { x in g(f(x)) }
}

func double(n: Int) -> Int {
    return n * 2
}

func increment(n: Int) -> Int {
    return n + 1
}

func pipe() {
    let doubleThenIncrement = compose(double, increment)
    print("Result:", doubleThenIncrement(5))
}

pipe()
