class TaskTracker {
    var onComplete: (() -> Void)?

    func complete() {
        onComplete?()
    }
}

func track() {
    let tracker = TaskTracker()
    tracker.onComplete = {
        print("Task lifecycle completed successfully")
    }
    tracker.complete()
}

track()
