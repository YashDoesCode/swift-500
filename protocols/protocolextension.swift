protocol MathType {}

extension MathType {
    func square(n: Int) -> Int {
        return n * n
    }
}

struct Engine: MathType {}

func compute() {
    let engine = Engine()
    print("Square 7:", engine.square(n: 7))
}

compute()
