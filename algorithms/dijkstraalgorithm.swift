struct Dijkstra {
    func shortestPath(nodes: Int, edges: [(from: Int, to: Int, weight: Int)], start: Int) -> [Int] {
        var dist = Array(repeating: 999999, count: nodes)
        dist[start] = 0
        for _ in 0..<nodes - 1 {
            for edge in edges {
                if dist[edge.from] != 999999 && dist[edge.from] + edge.weight < dist[edge.to] {
                    dist[edge.to] = dist[edge.from] + edge.weight
                }
            }
        }
        return dist
    }
}

func compute() {
    let d = Dijkstra()
    let edges = [(0, 1, 4), (0, 2, 1), (2, 1, 2), (1, 3, 1)]
    print("Shortest paths from 0:", d.shortestPath(nodes: 4, edges: edges, start: 0))
}

compute()
