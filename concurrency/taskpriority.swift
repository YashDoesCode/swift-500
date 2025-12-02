func schedule() async {
    let task = Task(priority: .high) {
        return "High priority completed"
    }
    print(await task.value)
}

await schedule()
