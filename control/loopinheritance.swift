class StepRunner {
    func run() {
        for step in 1...3 {
            execute(step: step)
        }
    }

    func execute(step: Int) {
        print("Base step:", step)
    }
}

class CustomRunner: StepRunner {
    override func execute(step: Int) {
        print("Customized step:", step * 10)
    }
}

func execute() {
    let runner: StepRunner = CustomRunner()
    runner.run()
}

execute()
