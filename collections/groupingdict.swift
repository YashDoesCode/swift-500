struct Grouping {
    func groupWords(words: [String]) -> [Int: [String]] {
        return Dictionary(grouping: words, by: { $0.count })
    }
}

func group() {
    let g = Grouping()
    let words = ["cat", "dog", "elephant", "bear", "fox"]
    print("Grouped by length:", g.groupWords(words: words))
}

group()
