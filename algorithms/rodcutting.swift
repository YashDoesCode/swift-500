struct RodCutting {
    func maxProfit(prices: [Int], length: Int) -> Int {
        var dp = Array(repeating: 0, count: length + 1)
        for i in 1...length {
            var maxVal = 0
            for j in 1...i {
                if j - 1 < prices.count {
                    maxVal = max(maxVal, prices[j - 1] + dp[i - j])
                }
            }
            dp[i] = maxVal
        }
        return dp[length]
    }
}

func solve() {
    let rc = RodCutting()
    print("Max profit for length 4:", rc.maxProfit(prices: [1, 5, 8, 9, 10], length: 4))
}

solve()
