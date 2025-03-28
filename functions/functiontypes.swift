struct Operator {
    func apply(fn: (Int, Int) -> Int, a: Int, b: Int) -> Int {
        return fn(a, b)
    }
}

func multiply(x: Int, y: Int) -> Int {
    return x * y
}

func apply() {
    let op = Operator()
    print("Applied multiply:", op.apply(fn: multiply, a: 6, b: 7))
}

apply()
