func fetchResource(id: Int) async -> String {
    return "Res-\(id)"
}

func fetchAll() async {
    async let r1 = fetchResource(id: 1)
    async let r2 = fetchResource(id: 2)
    let results = await [r1, r2]
    print("Parallel fetched:", results)
}

await fetchAll()
