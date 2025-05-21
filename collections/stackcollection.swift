struct Stack<T> {
    var items: [T] = []

    mutating func push(item: T) {
        items.append(item)
    }

    mutating func pop() -> T? {
        return items.popLast()
    }

    func peek() -> T? {
        return items.last
    }
}

func stack() {
    var s = Stack<Int>()
    s.push(item: 10)
    s.push(item: 20)
    print("Peek:", s.peek() ?? -1)
    print("Pop:", s.pop() ?? -1)
    print("Pop:", s.pop() ?? -1)
}

stack()
