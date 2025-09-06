struct LookupTable<Key: Hashable, Value> {
    private var storage: [Key: Value] = [:]

    mutating func insert(key: Key, value: Value) {
        storage[key] = value
    }

    func retrieve(key: Key) -> Value? {
        return storage[key]
    }
}

func lookup() {
    var table = LookupTable<String, Int>()
    table.insert(key: "score", value: 100)
    print("Retrieved:", table.retrieve(key: "score") ?? -1)
}

lookup()
