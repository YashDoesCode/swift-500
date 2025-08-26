protocol Repository {
    associatedtype Entity
    func find(id: Int) -> Entity?
    mutating func save(entity: Entity)
}

struct InMemoryRepo: Repository {
    typealias Entity = String
    private var store: [Int: String] = [:]

    mutating func save(entity: String) {
        store[1] = entity
    }

    func find(id: Int) -> String? {
        return store[id]
    }
}

func repo() {
    var r = InMemoryRepo()
    r.save(entity: "User Alpha")
    print("Found user:", r.find(id: 1) ?? "none")
}

repo()
