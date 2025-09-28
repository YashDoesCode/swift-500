protocol Component {
    associatedtype Output
    func execute() -> Output
}

struct Leaf<T>: Component {
    let value: T
    func execute() -> T { return value }
}

func composite() {
    let l = Leaf(value: "Leaf Value")
    print("Executed leaf:", l.execute())
}

composite()
