func launch() async {
    let handle = Task {
        return 42
    }
    let value = await handle.value
    print("Task value:", value)
}

await launch()
