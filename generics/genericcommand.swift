struct Command<Context> {
    let action: (inout Context) -> Void

    func execute(on context: inout Context) {
        action(&context)
    }
}

func execute() {
    var count = 10
    let cmd = Command<Int> { $0 += 5 }
    cmd.execute(on: &count)
    print("New count:", count)
}

execute()
