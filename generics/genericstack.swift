struct Stack<Element> {
    private var elements: [Element] = []

    mutating func push(_ item: Element) {
        elements.append(item)
    }

    mutating func pop() -> Element? {
        return elements.popLast()
    }
}

func stack() {
    var st = Stack<String>()
    st.push("bottom")
    st.push("top")
    print("Popped:", st.pop() ?? "none")
}

stack()
