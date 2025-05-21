struct Chunker {
    func chunk<T>(list: [T], size: Int) -> [[T]] {
        var chunks: [[T]] = []
        var index = 0
        while index < list.count {
            let chunkEnd = min(index + size, list.count)
            chunks.append(Array(list[index..<chunkEnd]))
            index += size
        }
        return chunks
    }
}

func chunk() {
    let c = Chunker()
    let list = [1, 2, 3, 4, 5, 6, 7]
    print("Chunks of 3:", c.chunk(list: list, size: 3))
}

chunk()
