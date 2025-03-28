class JobQueue {
    var jobs: [() -> Void] = []

    func enqueue(job: @escaping () -> Void) {
        jobs.append(job)
    }

    func flush() {
        for job in jobs {
            job()
        }
        jobs.removeAll()
    }
}

func flush() {
    let queue = JobQueue()
    queue.enqueue { print("Job 1 executed") }
    queue.enqueue { print("Job 2 executed") }
    queue.flush()
}

flush()
