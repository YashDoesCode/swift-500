class CommandExecutor {
    var commands: [() -> Void] = []

    func add(cmd: @escaping () -> Void) {
        commands.append(cmd)
    }

    func execute() {
        for cmd in commands {
            cmd()
        }
    }
}

func execute() {
    let exec = CommandExecutor()
    exec.add { print("Command Alpha") }
    exec.add { print("Command Beta") }
    exec.execute()
}

execute()
