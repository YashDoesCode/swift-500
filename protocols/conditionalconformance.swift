struct Wrapper<T> {
    let value: T
}

extension Wrapper: Equatable where T: Equatable {
    static func == (lhs: Wrapper<T>, rhs: Wrapper<T>) -> Bool {
        return lhs.value == rhs.value
    }
}

func compare() {
    let w1 = Wrapper(value: 42)
    let w2 = Wrapper(value: 42)
    print("w1 == w2:", w1 == w2)
}

compare()
