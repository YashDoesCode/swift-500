struct Reducer {
    func reduce<T, U>(items: [T], initial: U, combine: (U, T) -> U) -> U {
        var acc = initial
        for item in items {
            acc = combine(acc, item)
        }
        return acc
    }
}

func reduce() {
    let r = Reducer()
    let totalLength = r.reduce(items: ["Swift", "Generics"], initial: 0) { $0 + $1.count }
    print("Total length:", totalLength)
}

reduce()
