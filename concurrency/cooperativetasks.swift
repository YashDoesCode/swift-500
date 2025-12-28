func backgroundWorker() async {
    for i in 1...3 {
        guard !Task.isCancelled else { break }
        await Task.yield()
        print("Worker step:", i)
    }
}

func execute() async {
    let task = Task { await backgroundWorker() }
    await task.value
}

await execute()
