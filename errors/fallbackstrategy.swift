enum CacheError: Error { case miss }

func fetchFromCache() throws -> String {
    throw CacheError.miss
}

func fetchFromNetwork() -> String {
    return "Network Data"
}

func fetch() -> String {
    do {
        return try fetchFromCache()
    } catch {
        return fetchFromNetwork()
    }
}

func execute() {
    print("Fetched:", fetch())
}

execute()
