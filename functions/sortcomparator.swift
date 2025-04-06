struct Sorter {
    func sort(words: [String], by comparator: (String, String) -> Bool) -> [String] {
        return words.sorted(by: comparator)
    }
}

func sort() {
    let sorter = Sorter()
    let items = ["banana", "pie", "apple"]
    print("Sorted by length:", sorter.sort(words: items) { $0.count < $1.count })
}

sort()
