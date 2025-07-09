class SortStrategy {
    func sort(numbers: [Int]) -> [Int] { return numbers }
}

class AscendingStrategy: SortStrategy {
    override func sort(numbers: [Int]) -> [Int] { return numbers.sorted() }
}

class DescendingStrategy: SortStrategy {
    override func sort(numbers: [Int]) -> [Int] { return numbers.sorted(by: >) }
}

class Context {
    var strategy: SortStrategy
    init(strategy: SortStrategy) { self.strategy = strategy }
    func execute(list: [Int]) -> [Int] { return strategy.sort(numbers: list) }
}

func strategize() {
    let ctx = Context(strategy: AscendingStrategy())
    print("Asc:", ctx.execute(list: [3, 1, 4]))
    ctx.strategy = DescendingStrategy()
    print("Desc:", ctx.execute(list: [3, 1, 4]))
}

strategize()
