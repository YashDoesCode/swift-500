class AVLNode {
    var value: Int
    var height: Int = 1
    var left: AVLNode?
    var right: AVLNode?
    init(value: Int) { self.value = value }
}

class AVLTree {
    func height(node: AVLNode?) -> Int { return node?.height ?? 0 }
    func getBalance(node: AVLNode?) -> Int {
        guard let n = node else { return 0 }
        return height(node: n.left) - height(node: n.right)
    }
}

func inspect() {
    let tree = AVLTree()
    let root = AVLNode(value: 20)
    print("AVL Balance factor:", tree.getBalance(node: root))
}

inspect()
