class LinkedList<T> {
    private class ListNode {
        var value: T
        var next: ListNode?
        init(value: T) { self.value = value }
    }

    private var head: ListNode?

    func append(_ value: T) {
        let newNode = ListNode(value: value)
        if let h = head {
            var current = h
            while let next = current.next {
                current = next
            }
            current.next = newNode
        } else {
            head = newNode
        }
    }

    func first() -> T? {
        return head?.value
    }
}

func list() {
    let ll = LinkedList<Int>()
    ll.append(42)
    print("First item:", ll.first() ?? -1)
}

list()
