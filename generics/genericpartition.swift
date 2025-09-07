struct Partitioner {
    func partition<T>(items: [T], by predicate: (T) -> Bool) -> (matching: [T], nonMatching: [T]) {
        var match: [T] = []
        var nonMatch: [T] = []
        for item in items {
            if predicate(item) {
                match.append(item)
            } else {
                nonMatch.append(item)
            }
        }
        return (match, nonMatch)
    }
}

func partition() {
    let p = Partitioner()
    let (evens, odds) = p.partition(items: [1, 2, 3, 4, 5]) { $0 % 2 == 0 }
    print("Evens:", evens, "Odds:", odds)
}

partition()
