struct Container<Item> {
    var items: [Item] = []

    mutating func add(item: Item) {
        items.append(item)
    }
}

func contain() {
    var c = Container<String>()
    c.add(item: "Swift")
    print("Items:", c.items)
}

contain()
