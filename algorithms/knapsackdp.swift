struct Knapsack {
    func solve(weights: [Int], values: [Int], capacity: Int) -> Int {
        let n = weights.count
        var dp = Array(repeating: Array(repeating: 0, count: capacity + 1), count: n + 1)
        for i in 1...n {
            for w in 1...capacity {
                if weights[i - 1] <= w {
                    dp[i][w] = max(values[i - 1] + dp[i - 1][w - weights[i - 1]], dp[i - 1][w])
                } else {
                    dp[i][w] = dp[i - 1][w]
                }
            }
        }
        return dp[n][capacity]
    }
}

func solve() {
    let ks = Knapsack()
    print("Max Knapsack value:", ks.solve(weights: [1, 2, 3], values: [10, 15, 40], capacity: 4))
}

solve()
