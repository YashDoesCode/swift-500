class BSTNode {
    var value: Int
    var left: BSTNode?
    var right: BSTNode?
    init(value: Int) { self.value = value }
}

class BST {
    var root: BSTNode?

    func insert(value: Int) {
        root = insertRec(node: root, value: value)
    }

    private func insertRec(node: BSTNode?, value: Int) -> BSTNode {
        guard let n = node else { return BSTNode(value: value) }
        if value < n.value { n.left = insertRec(node: n.left, value: value) }
        else if value > n.value { n.right = insertRec(node: n.right, value: value) }
        return n
    }

    func inorder(node: BSTNode?) -> [Int] {
        guard let n = node else { return [] }
        return inorder(node: n.left) + [n.value] + inorder(node: n.right)
    }
}

func build() {
    let tree = BST()
    tree.insert(value: 50)
    tree.insert(value: 30)
    tree.insert(value: 70)
    print("BST Inorder:", tree.inorder(node: tree.root))
}

build()
