struct Mapper {
    func map<T, U>(items: [T], transform: (T) -> U) -> [U] {
        return items.map(transform)
    }
}

func map() {
    let m = Mapper()
    let result = m.map(items: [1, 2, 3]) { "\($0 * 10)" }
    print("Mapped:", result)
}

map()
