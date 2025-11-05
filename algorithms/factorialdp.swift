struct FactorialDP {
    func factorial(n: Int) -> Int {
        if n <= 1 { return 1 }
        var table = Array(repeating: 1, count: n + 1)
        for i in 2...n {
            table[i] = table[i - 1] * i
        }
        return table[n]
    }
}

func compute() {
    let fd = FactorialDP()
    print("Factorial 7:", fd.factorial(n: 7))
}

compute()
