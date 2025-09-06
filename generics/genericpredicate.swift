struct Predicate<T> {
    let matches: (T) -> Bool

    func test(target: T) -> Bool {
        return matches(target)
    }
}

func predicate() {
    let p = Predicate<Int> { $0 > 10 }
    print("15 matches:", p.test(target: 15))
    print("5 matches:", p.test(target: 5))
}

predicate()
