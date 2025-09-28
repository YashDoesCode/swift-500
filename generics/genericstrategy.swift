struct Strategy<Input, Output> {
    let algorithm: (Input) -> Output

    func run(input: Input) -> Output {
        return algorithm(input)
    }
}

func strategize() {
    let strat = Strategy<[Int], Int> { $0.reduce(0, +) }
    print("Strategy sum:", strat.run(input: [1, 2, 3, 4]))
}

strategize()
