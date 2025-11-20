struct TopoSort {
    func sort(numNodes: Int, edges: [(Int, Int)]) -> [Int] {
        var inDegree = Array(repeating: 0, count: numNodes)
        var adj = Array(repeating: [Int](), count: numNodes)
        for (u, v) in edges {
            adj[u].append(v)
            inDegree[v] += 1
        }
        var queue = (0..<numNodes).filter { inDegree[$0] == 0 }
        var result: [Int] = []
        while !queue.isEmpty {
            let u = queue.removeFirst()
            result.append(u)
            for v in adj[u] {
                inDegree[v] -= 1
                if inDegree[v] == 0 { queue.append(v) }
            }
        }
        return result
    }
}

func sort() {
    let ts = TopoSort()
    let edges = [(5, 2), (5, 0), (4, 0), (4, 1), (2, 3), (3, 1)]
    print("Topological sort:", ts.sort(numNodes: 6, edges: edges))
}

sort()
