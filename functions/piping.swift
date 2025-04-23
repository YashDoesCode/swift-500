struct Pipeline {
    func pipe<T>(input: T, operations: [(T) -> T]) -> T {
        var current = input
        for op in operations {
            current = op(current)
        }
        return current
    }
}

func pipeline() {
    let p = Pipeline()
    let ops: [(Int) -> Int] = [
        { $0 + 10 },
        { $0 * 2 },
        { $0 - 5 }
    ]
    print("Piped result:", p.pipe(input: 5, operations: ops))
}

pipeline()
