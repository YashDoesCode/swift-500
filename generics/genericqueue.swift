struct Queue<Element> {
    private var elements: [Element] = []

    mutating func enqueue(_ item: Element) {
        elements.append(item)
    }

    mutating func dequeue() -> Element? {
        guard !elements.isEmpty else { return nil }
        return elements.removeFirst()
    }
}

func queue() {
    var q = Queue<Int>()
    q.enqueue(1)
    q.enqueue(2)
    print("Dequeued:", q.dequeue() ?? -1)
}

queue()
