struct TaskStack {
    func run() {
        print("Start")
        defer { print("Defer 1") }
        defer { print("Defer 2") }
        defer { print("Defer 3") }
        print("End")
    }
}

func run() {
    let stack = TaskStack()
    stack.run()
}

run()
