actor ReentrantWorker {
    var state: String = "idle"

    func performWork() async {
        state = "working"
        await Task.yield()
        state = "done"
    }
}

func work() async {
    let worker = ReentrantWorker()
    await worker.performWork()
    print("Worker finished execution")
}

await work()
