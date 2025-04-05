struct PredicateFilter {
    func find(numbers: [Int], matching predicate: (Int) -> Bool) -> [Int] {
        var matched: [Int] = []
        for n in numbers {
            if predicate(n) {
                matched.append(n)
            }
        }
        return matched
    }
}

func match() {
    let filter = PredicateFilter()
    let result = filter.find(numbers: [10, 15, 20, 25, 30]) { $0 > 18 }
    print("Matched:", result)
}

match()
