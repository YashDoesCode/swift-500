struct PureMath {
    func add(a: Int, b: Int) -> Int {
        return a + b
    }

    func square(n: Int) -> Int {
        return n * n
    }
}

func pure() {
    let pm = PureMath()
    print("3 + 4:", pm.add(a: 3, b: 4))
    print("5^2:", pm.square(n: 5))
}

pure()
