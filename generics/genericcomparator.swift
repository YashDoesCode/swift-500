struct Comparator<T> {
    let compare: (T, T) -> Bool

    func isOrdered(_ a: T, _ b: T) -> Bool {
        return compare(a, b)
    }
}

func compare() {
    let comp = Comparator<Int> { $0 < $1 }
    print("3 is before 7:", comp.isOrdered(3, 7))
}

compare()
