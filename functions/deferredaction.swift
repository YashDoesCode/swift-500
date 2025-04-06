struct ActionRunner {
    func execute(task: () -> Void) {
        defer { print("Post-task cleanup") }
        print("Task start")
        task()
    }
}

func execute() {
    let runner = ActionRunner()
    runner.execute {
        print("Inside task execution")
    }
}

execute()
