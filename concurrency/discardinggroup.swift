func discard() async {
    await withDiscardingTaskGroup { group in
        group.addTask {
            print("Background work item 1")
        }
        group.addTask {
            print("Background work item 2")
        }
    }
}

await discard()
