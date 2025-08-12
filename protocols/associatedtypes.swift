protocol Container {
    associatedtype Item
    mutating func append(item: Item)
    var count: Int { get }
}

struct Box<T>: Container {
    typealias Item = T
    private var items: [T] = []

    mutating func append(item: T) {
        items.append(item)
    }

    var count: Int {
        return items.count
    }
}

func container() {
    var box = Box<String>()
    box.append(item: "alpha")
    box.append(item: "beta")
    print("Box count:", box.count)
}

container()
