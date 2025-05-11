struct Aggregator {
    func sum(numbers: [Int]) -> Int {
        return numbers.reduce(0, +)
    }
}

func aggregate() {
    let agg = Aggregator()
    print("Total sum:", agg.sum(numbers: [10, 20, 30, 40]))
}

aggregate()
