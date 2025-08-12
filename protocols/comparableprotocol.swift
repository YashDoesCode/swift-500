struct Priority: Comparable {
    let level: Int

    static func < (lhs: Priority, rhs: Priority) -> Bool {
        return lhs.level < rhs.level
    }
}

func compare() {
    let p1 = Priority(level: 1)
    let p2 = Priority(level: 5)
    print("p1 < p2:", p1 < p2)
    print("p1 >= p2:", p1 >= p2)
}

compare()
