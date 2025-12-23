func runHierarchical() async -> Int {
    return await withTaskGroup(of: Int.self) { group in
        group.addTask { 5 }
        group.addTask { 15 }
        var sum = 0
        for await n in group { sum += n }
        return sum
    }
}

func run() async {
    print("Structured sum:", await runHierarchical())
}

await run()
