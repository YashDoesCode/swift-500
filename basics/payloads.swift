enum Command {
    case quit
    case move(x: Int, y: Int)
    case message(String)
}

func execute(cmd: Command) {
    switch cmd {
    case .quit:
        print("Quitting")
    case .move(let x, let y):
        print("Moving to x:\(x) y:\(y)")
    case .message(let text):
        print("Message: \(text)")
    }
}

func dispatch() {
    execute(cmd: .move(x: 10, y: 20))
    execute(cmd: .message("Ready"))
    execute(cmd: .quit)
}

dispatch()
