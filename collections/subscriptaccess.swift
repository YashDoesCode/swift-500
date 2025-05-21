struct SafeList<T> {
    var items: [T]

    subscript(safe index: Int) -> T? {
        guard index >= 0 && index < items.count else {
            return nil
        }
        return items[index]
    }
}

func safeSubscript() {
    let list = SafeList(items: ["a", "b", "c"])
    print("Safe 1:", list[safe: 1] ?? "none")
    print("Safe 10:", list[safe: 10] ?? "none")
}

safeSubscript()
