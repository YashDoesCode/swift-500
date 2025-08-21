protocol Runnable {
    func run()
}

class BaseRunner: Runnable {
    func run() {
        print("Base runner executing")
    }
}

class AdvancedRunner: BaseRunner {
    override func run() {
        print("Advanced runner executing with optimizations")
    }
}

func execute() {
    let runner: Runnable = AdvancedRunner()
    runner.run()
}

execute()
