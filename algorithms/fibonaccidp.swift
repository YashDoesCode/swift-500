struct FibDP {
    func fib(n: Int) -> Int {
        if n <= 1 { return n }
        var dp = Array(repeating: 0, count: n + 1)
        dp[1] = 1
        for i in 2...n {
            dp[i] = dp[i - 1] + dp[i - 2]
        }
        return dp[n]
    }
}

func compute() {
    let fdp = FibDP()
    print("Fib DP 15:", fdp.fib(n: 15))
}

compute()
