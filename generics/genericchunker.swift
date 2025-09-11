struct Chunker {
    func chunk<T>(items: [T], size: Int) -> [[T]] {
        var chunks: [[T]] = []
        var index = 0
        while index < items.count {
            let end = min(index + size, items.count)
            chunks.append(Array(items[index..<end]))
            index += size
        }
        return chunks
    }
}

func chunk() {
    let c = Chunker()
    print("Chunks:", c.chunk(items: ["a", "b", "c", "d", "e"], size: 2))
}

chunk()
