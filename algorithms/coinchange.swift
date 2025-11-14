struct CoinChange {
    func minCoins(coins: [Int], amount: Int) -> Int {
        var dp = Array(repeating: amount + 1, count: amount + 1)
        dp[0] = 0
        for i in 1...amount {
            for coin in coins {
                if i - coin >= 0 {
                    dp[i] = min(dp[i], dp[i - coin] + 1)
                }
            }
        }
        return dp[amount] > amount ? -1 : dp[amount]
    }
}

func solve() {
    let cc = CoinChange()
    print("Min coins for 11 with [1, 2, 5]:", cc.minCoins(coins: [1, 2, 5], amount: 11))
}

solve()
