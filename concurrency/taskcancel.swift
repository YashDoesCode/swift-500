func cancelDemo() async {
    let task = Task {
        if Task.isCancelled { return "Cancelled" }
        return "Finished"
    }
    task.cancel()
    print("Result:", await task.value)
}

await cancelDemo()
