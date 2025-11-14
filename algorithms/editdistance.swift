struct Levenshtein {
    func distance(word1: String, word2: String) -> Int {
        let s1 = Array(word1)
        let s2 = Array(word2)
        let m = s1.count
        let n = s2.count
        var dp = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
        for i in 0...m { dp[i][0] = i }
        for j in 0...n { dp[0][j] = j }
        for i in 1...m {
            for j in 1...n {
                if s1[i - 1] == s2[j - 1] {
                    dp[i][j] = dp[i - 1][j - 1]
                } else {
                    dp[i][j] = 1 + min(dp[i - 1][j], dp[i][j - 1], dp[i - 1][j - 1])
                }
            }
        }
        return dp[m][n]
    }
}

func evaluate() {
    let lev = Levenshtein()
    print("Edit distance (horse, ros):", lev.distance(word1: "horse", word2: "ros"))
}

evaluate()
