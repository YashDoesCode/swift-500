struct Queue<T> {
    var items: [T] = []

    mutating func enqueue(item: T) {
        items.append(item)
    }

    mutating func dequeue() -> T? {
        guard !items.isEmpty else { return nil }
        return items.removeFirst()
    }
}

func queue() {
    var q = Queue<String>()
    q.enqueue(item: "First")
    q.enqueue(item: "Second")
    print("Dequeue:", q.dequeue() ?? "none")
    print("Dequeue:", q.dequeue() ?? "none")
}

queue()
