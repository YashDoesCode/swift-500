class Node<T> {
    var value: T
    var next: Node<T>?

    init(value: T, next: Node<T>? = nil) {
        self.value = value
        self.next = next
    }
}

func chain() {
    let node2 = Node(value: 20)
    let node1 = Node(value: 10, next: node2)
    print("Node 1:", node1.value, "Node 2:", node1.next?.value ?? -1)
}

chain()
