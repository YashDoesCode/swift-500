struct LIS {
    func length(numbers: [Int]) -> Int {
        guard !numbers.isEmpty else { return 0 }
        var dp = Array(repeating: 1, count: numbers.count)
        for i in 1..<numbers.count {
            for j in 0..<i {
                if numbers[j] < numbers[i] {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
        }
        return dp.max() ?? 1
    }
}

func evaluate() {
    let lis = LIS()
    print("LIS length:", lis.length(numbers: [10, 9, 2, 5, 3, 7, 101, 18]))
}

evaluate()
