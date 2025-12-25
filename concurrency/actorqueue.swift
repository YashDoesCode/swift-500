actor AsyncJobQueue {
    private var queue: [String] = []

    func enqueue(_ job: String) {
        queue.append(job)
    }

    func dequeue() -> String? {
        guard !queue.isEmpty else { return nil }
        return queue.removeFirst()
    }
}

func queue() async {
    let q = AsyncJobQueue()
    await q.enqueue("RenderJob")
    print("Job dequeued:", await q.dequeue() ?? "none")
}

await queue()
