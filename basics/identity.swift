class Node {
    let value: Int
    init(value: Int) {
        self.value = value
    }
}

func compare() {
    let first = Node(value: 10)
    let second = Node(value: 10)
    let alias = first
    print("first === second:", first === second)
    print("first === alias:", first === alias)
    print("first !== second:", first !== second)
}

compare()
