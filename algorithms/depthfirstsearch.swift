struct DFSGraph {
    let adj: [Int: [Int]]

    func traverse(start: Int) -> [Int] {
        var visited: Set<Int> = []
        var order: [Int] = []
        func dfs(node: Int) {
            visited.insert(node)
            order.append(node)
            for neighbor in adj[node, default: []] {
                if !visited.contains(neighbor) {
                    dfs(node: neighbor)
                }
            }
        }
        dfs(node: start)
        return order
    }
}

func traverse() {
    let g = DFSGraph(adj: [0: [1, 2], 1: [2], 2: [0, 3], 3: [3]])
    print("DFS order:", g.traverse(start: 2))
}

traverse()
