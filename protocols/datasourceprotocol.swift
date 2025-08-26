protocol DataSource {
    func numberOfItems() -> Int
    func titleForItem(at index: Int) -> String
}

class ListDataSource: DataSource {
    let items = ["Swift", "Generics", "Protocols"]
    func numberOfItems() -> Int { return items.count }
    func titleForItem(at index: Int) -> String { return items[index] }
}

func display() {
    let ds: DataSource = ListDataSource()
    print("Items:", ds.numberOfItems())
    print("Item 0:", ds.titleForItem(at: 0))
}

display()
