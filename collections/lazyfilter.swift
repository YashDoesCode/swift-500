struct LazyFilterOps {
    func firstEvenSquares() -> [Int] {
        let evens = (1...100).lazy.filter { $0 % 2 == 0 }.map { $0 * $0 }.prefix(4)
        return Array(evens)
    }
}

func evaluate() {
    let lf = LazyFilterOps()
    print("First 4 even squares:", lf.firstEvenSquares())
}

evaluate()
