class Repository<T> {
    private var items: [T] = []

    func add(item: T) {
        items.append(item)
    }

    func all() -> [T] {
        return items
    }
}

func repo() {
    let r = Repository<String>()
    r.add(item: "Item 1")
    print("All items:", r.all())
}

repo()
