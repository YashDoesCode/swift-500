struct PriorityQueue<T: Comparable> {
    private var elements: [T] = []

    mutating func push(_ item: T) {
        elements.append(item)
        elements.sort()
    }

    mutating func pop() -> T? {
        guard !elements.isEmpty else { return nil }
        return elements.removeFirst()
    }
}

func queue() {
    var pq = PriorityQueue<Int>()
    pq.push(30)
    pq.push(10)
    pq.push(20)
    print("Min popped:", pq.pop() ?? -1)
}

queue()
