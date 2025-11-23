struct DisjointSet {
    var parent: [Int]
    init(size: Int) { parent = Array(0..<size) }
    mutating func find(_ i: Int) -> Int {
        if parent[i] == i { return i }
        parent[i] = find(parent[i])
        return parent[i]
    }
    mutating func union(_ i: Int, _ j: Int) {
        let rootI = find(i)
        let rootJ = find(j)
        if rootI != rootJ { parent[rootI] = rootJ }
    }
}

struct Kruskal {
    func minSpanningTree(nodes: Int, edges: [(u: Int, v: Int, weight: Int)]) -> Int {
        let sortedEdges = edges.sorted { $0.weight < $1.weight }
        var ds = DisjointSet(size: nodes)
        var mstCost = 0
        for edge in sortedEdges {
            if ds.find(edge.u) != ds.find(edge.v) {
                ds.union(edge.u, edge.v)
                mstCost += edge.weight
            }
        }
        return mstCost
    }
}

func compute() {
    let k = Kruskal()
    let edges = [(0, 1, 10), (0, 2, 6), (0, 3, 5), (1, 3, 15), (2, 3, 4)]
    print("Kruskal MST Cost:", k.minSpanningTree(nodes: 4, edges: edges))
}

compute()
