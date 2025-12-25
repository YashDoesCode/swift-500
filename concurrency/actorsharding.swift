actor Shard {
    let id: Int
    init(id: Int) { self.id = id }
    func handle() -> String { return "Shard \(id) processed" }
}

func shard() async {
    let shards = [Shard(id: 1), Shard(id: 2)]
    for s in shards {
        print(await s.handle())
    }
}

await shard()
