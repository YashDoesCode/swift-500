class Light {
    func turnOn() { print("Light is ON") }
}

class Command {
    func execute() {}
}

class LightOnCommand: Command {
    let light: Light
    init(light: Light) { self.light = light }
    override func execute() { light.turnOn() }
}

class Invoker {
    func run(command: Command) {
        command.execute()
    }
}

func invoke() {
    let light = Light()
    let cmd = LightOnCommand(light: light)
    let invoker = Invoker()
    invoker.run(command: cmd)
}

invoke()
