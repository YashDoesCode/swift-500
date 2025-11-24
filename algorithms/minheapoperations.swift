struct MinHeap {
    private var heap: [Int] = []

    mutating func insert(_ val: Int) {
        heap.append(val)
        heap.sort()
    }

    mutating func extractMin() -> Int? {
        guard !heap.isEmpty else { return nil }
        return heap.removeFirst()
    }
}

func operate() {
    var mh = MinHeap()
    mh.insert(15)
    mh.insert(5)
    mh.insert(20)
    print("Extracted min:", mh.extractMin() ?? -1)
}

operate()
