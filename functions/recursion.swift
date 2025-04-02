struct Factorial {
    func compute(n: Int) -> Int {
        if n <= 1 {
            return 1
        }
        return n * compute(n: n - 1)
    }
}

func compute() {
    let fact = Factorial()
    print("Factorial 5:", fact.compute(n: 5))
}

compute()
