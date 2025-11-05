struct FibRecursive {
    func fib(n: Int) -> Int {
        if n <= 1 { return n }
        return fib(n: n - 1) + fib(n: n - 2)
    }
}

func compute() {
    let fr = FibRecursive()
    print("Fib 7:", fr.fib(n: 7))
}

compute()
