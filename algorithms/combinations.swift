struct Combiner {
    func combine(n: Int, k: Int) -> [[Int]] {
        var results: [[Int]] = []
        var current: [Int] = []
        func backtrack(start: Int) {
            if current.count == k {
                results.append(current)
                return
            }
            if start > n { return }
            for i in start...n {
                current.append(i)
                backtrack(start: i + 1)
                current.removeLast()
            }
        }
        backtrack(start: 1)
        return results
    }
}

func combine() {
    let c = Combiner()
    print("Combinations (4, 2):", c.combine(n: 4, k: 2))
}

combine()
