class TreeNode {
    let value: String
    var children: [TreeNode] = []

    init(value: String) {
        self.value = value
    }

    func add(child: TreeNode) {
        children.append(child)
    }

    func printTree(indent: String = "") {
        print(indent + value)
        for child in children {
            child.printTree(indent: indent + "  ")
        }
    }
}

func render() {
    let root = TreeNode(value: "Root")
    let childA = TreeNode(value: "Child A")
    let childB = TreeNode(value: "Child B")
    root.add(child: childA)
    root.add(child: childB)
    root.printTree()
}

render()
