struct LCS {
    func length(text1: String, text2: String) -> Int {
        let s1 = Array(text1)
        let s2 = Array(text2)
        let m = s1.count
        let n = s2.count
        var dp = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
        for i in 1...m {
            for j in 1...n {
                if s1[i - 1] == s2[j - 1] {
                    dp[i][j] = 1 + dp[i - 1][j - 1]
                } else {
                    dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
                }
            }
        }
        return dp[m][n]
    }
}

func evaluate() {
    let lcs = LCS()
    print("LCS length:", lcs.length(text1: "abcde", text2: "ace"))
}

evaluate()
