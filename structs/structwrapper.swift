struct Box<T> {
    let value: T

    func map<U>(_ transform: (T) -> U) -> Box<U> {
        return Box<U>(value: transform(value))
    }
}

func wrap() {
    let b = Box(value: 42)
    let mapped = b.map { "Value is \($0)" }
    print("Mapped box:", mapped.value)
}

wrap()
