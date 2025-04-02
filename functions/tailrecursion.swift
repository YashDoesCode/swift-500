struct TailFactorial {
    func compute(n: Int, accumulator: Int = 1) -> Int {
        if n <= 1 {
            return accumulator
        }
        return compute(n: n - 1, accumulator: n * accumulator)
    }
}

func compute() {
    let tf = TailFactorial()
    print("Tail Factorial 6:", tf.compute(n: 6))
}

compute()
