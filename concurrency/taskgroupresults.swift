func collect() async {
    let items = await withTaskGroup(of: String.self) { group in
        group.addTask { "A" }
        group.addTask { "B" }
        var collected: [String] = []
        for await item in group {
            collected.append(item)
        }
        return collected.sorted()
    }
    print("Collected items:", items)
}

await collect()
