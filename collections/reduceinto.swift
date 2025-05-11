struct Histogram {
    func countOccurrences(words: [String]) -> [String: Int] {
        return words.reduce(into: [:]) { counts, word in
            counts[word, default: 0] += 1
        }
    }
}

func count() {
    let h = Histogram()
    let list = ["apple", "banana", "apple", "orange", "banana", "apple"]
    print("Counts:", h.countOccurrences(words: list))
}

count()
