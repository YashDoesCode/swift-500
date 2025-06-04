struct TaskItem: Identifiable {
    let id: Int
    let title: String
    var completed: Bool
}

func inspect() {
    let t = TaskItem(id: 101, title: "Write Swift", completed: true)
    print("Task #\(t.id): \(t.title) (Done: \(t.completed))")
}

inspect()
