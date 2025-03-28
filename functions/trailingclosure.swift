struct Executor {
    func execute(action: () -> Void) {
        print("Starting execution")
        action()
        print("Completed execution")
    }
}

func execute() {
    let exec = Executor()
    exec.execute {
        print("Executing custom block")
    }
}

execute()
