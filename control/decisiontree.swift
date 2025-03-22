class Node {
    func evaluate(value: Int) -> String {
        return "Generic Node"
    }
}

class DecisionNode: Node {
    let threshold: Int
    init(threshold: Int) {
        self.threshold = threshold
    }

    override func evaluate(value: Int) -> String {
        if value > threshold {
            return "Above \(threshold)"
        } else {
            return "Below or equal \(threshold)"
        }
    }
}

func evaluate() {
    let node: Node = DecisionNode(threshold: 50)
    print(node.evaluate(value: 75))
    print(node.evaluate(value: 25))
}

evaluate()
