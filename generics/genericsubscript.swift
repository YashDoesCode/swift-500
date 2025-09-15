struct KeyedStore<K: Hashable, V> {
    private var storage: [K: V] = [:]

    subscript(key: K) -> V? {
        get { return storage[key] }
        set { storage[key] = newValue }
    }
}

func subscriptAccess() {
    var store = KeyedStore<String, Double>()
    store["pi"] = 3.1415
    print("Stored pi:", store["pi"] ?? 0.0)
}

subscriptAccess()
