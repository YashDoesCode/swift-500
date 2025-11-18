struct BFSGraph {
    let adj: [Int: [Int]]

    func traverse(start: Int) -> [Int] {
        var visited: Set<Int> = [start]
        var queue: [Int] = [start]
        var order: [Int] = []
        while !queue.isEmpty {
            let node = queue.removeFirst()
            order.append(node)
            for neighbor in adj[node, default: []] {
                if !visited.contains(neighbor) {
                    visited.insert(neighbor)
                    queue.append(neighbor)
                }
            }
        }
        return order
    }
}

func traverse() {
    let g = BFSGraph(adj: [0: [1, 2], 1: [2], 2: [0, 3], 3: [3]])
    print("BFS order:", g.traverse(start: 2))
}

traverse()
