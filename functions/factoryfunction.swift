enum OperatorType {
    case add
    case multiply
}

func makeOperator(type: OperatorType) -> (Int, Int) -> Int {
    switch type {
    case .add:
        return { $0 + $1 }
    case .multiply:
        return { $0 * $1 }
    }
}

func factory() {
    let op = makeOperator(type: .multiply)
    print("Factory multiply 4 * 6:", op(4, 6))
}

factory()
