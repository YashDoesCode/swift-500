struct MaxHeap {
    private var heap: [Int] = []

    mutating func insert(_ val: Int) {
        heap.append(val)
        heap.sort(by: >)
    }

    mutating func extractMax() -> Int? {
        guard !heap.isEmpty else { return nil }
        return heap.removeFirst()
    }
}

func operate() {
    var mh = MaxHeap()
    mh.insert(15)
    mh.insert(50)
    mh.insert(20)
    print("Extracted max:", mh.extractMax() ?? -1)
}

operate()
