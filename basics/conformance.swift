struct Item: CustomStringConvertible, Equatable {
    let id: Int
    let name: String

    var description: String {
        return "Item(#\(id): \(name))"
    }

    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.id == rhs.id
    }
}

func test() {
    let a = Item(id: 1, name: "Book")
    let b = Item(id: 1, name: "Copy")
    let c = Item(id: 2, name: "Pen")
    print(a)
    print("a == b:", a == b)
    print("a == c:", a == c)
}

test()
