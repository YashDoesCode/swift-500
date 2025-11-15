struct Permuter {
    func permute(items: [Int]) -> [[Int]] {
        var results: [[Int]] = []
        var current = items
        func backtrack(start: Int) {
            if start == current.count {
                results.append(current)
                return
            }
            for i in start..<current.count {
                current.swapAt(start, i)
                backtrack(start: start + 1)
                current.swapAt(start, i)
            }
        }
        backtrack(start: 0)
        return results
    }
}

func permute() {
    let p = Permuter()
    print("Permutations [1, 2, 3]:", p.permute(items: [1, 2, 3]))
}

permute()
