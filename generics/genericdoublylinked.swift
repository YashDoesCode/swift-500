class DoublyLinkedList<T> {
    class Node {
        var value: T
        var prev: Node?
        var next: Node?
        init(value: T) { self.value = value }
    }

    private var head: Node?

    func push(_ value: T) {
        let node = Node(value: value)
        node.next = head
        head?.prev = node
        head = node
    }

    func peek() -> T? {
        return head?.value
    }
}

func link() {
    let dll = DoublyLinkedList<String>()
    dll.push("Second")
    dll.push("First")
    print("Head peek:", dll.peek() ?? "none")
}

link()
