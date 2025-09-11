class TreeNode<T> {
    var value: T
    var children: [TreeNode<T>] = []

    init(value: T) {
        self.value = value
    }

    func add(child: TreeNode<T>) {
        children.append(child)
    }
}

func tree() {
    let root = TreeNode(value: "Root")
    root.add(child: TreeNode(value: "Child"))
    print("Root has children:", root.children.count)
}

tree()
