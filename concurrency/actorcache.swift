actor AsyncCache {
    private var entries: [String: String] = [:]

    func set(key: String, value: String) {
        entries[key] = value
    }

    func get(key: String) -> String? {
        return entries[key]
    }
}

func cache() async {
    let ac = AsyncCache()
    await ac.set(key: "user", value: "yash")
    print("Cached user:", await ac.get(key: "user") ?? "none")
}

await cache()
