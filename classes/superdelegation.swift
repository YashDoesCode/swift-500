class Task {
    func execute() {
        print("Base task execution")
    }
}

class LoggingTask: Task {
    override func execute() {
        print("Pre-execution log")
        super.execute()
        print("Post-execution log")
    }
}

func execute() {
    let task: Task = LoggingTask()
    task.execute()
}

execute()
