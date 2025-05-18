struct Deduplicator {
    func dedupe(list: [Int]) -> [Int] {
        var seen = Set<Int>()
        return list.filter { seen.insert($0).inserted }
    }
}

func dedupe() {
    let d = Deduplicator()
    let numbers = [1, 2, 2, 3, 4, 4, 5, 1]
    print("Deduped:", d.dedupe(list: numbers))
}

dedupe()
