struct LazyPipeline {
    func execute() -> [Int] {
        let sequence = (1...100).lazy.map { $0 * 2 }.prefix(5)
        return Array(sequence)
    }
}

func execute() {
    let lp = LazyPipeline()
    print("Lazy result:", lp.execute())
}

execute()
