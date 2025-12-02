func group() async {
    let total = await withTaskGroup(of: Int.self) { group in
        for i in 1...3 {
            group.addTask { i * 10 }
        }
        var sum = 0
        for await result in group {
            sum += result
        }
        return sum
    }
    print("Group sum:", total)
}

await group()
