struct SubsetSum {
    func isPossible(numbers: [Int], target: Int) -> Bool {
        let n = numbers.count
        var dp = Array(repeating: Array(repeating: false, count: target + 1), count: n + 1)
        for i in 0...n { dp[i][0] = true }
        for i in 1...n {
            for s in 1...target {
                if numbers[i - 1] <= s {
                    dp[i][s] = dp[i - 1][s - numbers[i - 1]] || dp[i - 1][s]
                } else {
                    dp[i][s] = dp[i - 1][s]
                }
            }
        }
        return dp[n][target]
    }
}

func solve() {
    let ss = SubsetSum()
    print("Subset sum 9 possible in [3, 34, 4, 12, 5, 2]:", ss.isPossible(numbers: [3, 34, 4, 12, 5, 2], target: 9))
}

solve()
