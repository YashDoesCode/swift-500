struct RingBuffer<T> {
    private var buffer: [T?]
    private var writeIndex = 0
    let capacity: Int

    init(capacity: Int) {
        self.capacity = capacity
        self.buffer = Array(repeating: nil, count: capacity)
    }

    mutating func write(_ item: T) {
        buffer[writeIndex] = item
        writeIndex = (writeIndex + 1) % capacity
    }
}

func ring() {
    var rb = RingBuffer<Int>(capacity: 3)
    rb.write(10)
    rb.write(20)
    print("Ring capacity:", rb.capacity)
}

ring()
