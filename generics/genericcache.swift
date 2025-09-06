class Cache<K: Hashable, V> {
    private var data: [K: V] = [:]

    func set(key: K, value: V) {
        data[key] = value
    }

    func get(key: K) -> V? {
        return data[key]
    }
}

func cache() {
    let c = Cache<Int, String>()
    c.set(key: 1, value: "Cached")
    print("Cache val:", c.get(key: 1) ?? "none")
}

cache()
