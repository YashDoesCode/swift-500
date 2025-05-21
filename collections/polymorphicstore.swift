class CacheBase {
    func get(key: String) -> String? {
        return nil
    }
}

class MemoryCache: CacheBase {
    var storage: [String: String] = [:]

    func set(key: String, value: String) {
        storage[key] = value
    }

    override func get(key: String) -> String? {
        return storage[key]
    }
}

func cache() {
    let mem = MemoryCache()
    mem.set(key: "session", value: "active")
    let base: CacheBase = mem
    print("Retrieved from cache:", base.get(key: "session") ?? "none")
}

cache()
