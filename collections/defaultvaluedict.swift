struct CounterDict {
    var counts: [String: Int] = [:]

    mutating func increment(key: String) {
        counts[key, default: 0] += 1
    }
}

func count() {
    var cd = CounterDict()
    cd.increment(key: "views")
    cd.increment(key: "views")
    cd.increment(key: "clicks")
    print("Counts:", cd.counts)
}

count()
