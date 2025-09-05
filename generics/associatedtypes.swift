protocol Storing {
    associatedtype Element
    mutating func put(_ item: Element)
    func peek() -> Element?
}

struct MemoryStore<T>: Storing {
    typealias Element = T
    private var item: T?

    mutating func put(_ item: T) {
        self.item = item
    }

    func peek() -> T? {
        return item
    }
}

func store() {
    var s = MemoryStore<Int>()
    s.put(99)
    print("Stored:", s.peek() ?? -1)
}

store()
