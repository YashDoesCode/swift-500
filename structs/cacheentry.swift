struct CacheItem<V> {
    let value: V
    let createdAt: Int

    func isExpired(currentTime: Int, ttl: Int) -> Bool {
        return currentTime - createdAt > ttl
    }
}

func check() {
    let item = CacheItem(value: "CachedData", createdAt: 100)
    print("Expired at 150 (TTL 100):", item.isExpired(currentTime: 150, ttl: 100))
    print("Expired at 250 (TTL 100):", item.isExpired(currentTime: 250, ttl: 100))
}

check()
