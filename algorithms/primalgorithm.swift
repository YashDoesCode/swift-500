struct PrimMST {
    func mst(nodes: Int, graph: [[Int]]) -> Int {
        var key = Array(repeating: 99999, count: nodes)
        var inMST = Array(repeating: false, count: nodes)
        key[0] = 0
        var totalWeight = 0
        for _ in 0..<nodes {
            var minKey = 99999
            var u = -1
            for i in 0..<nodes {
                if !inMST[i] && key[i] < minKey {
                    minKey = key[i]
                    u = i
                }
            }
            if u == -1 { break }
            inMST[u] = true
            totalWeight += key[u]
            for v in 0..<nodes {
                if graph[u][v] != 0 && !inMST[v] && graph[u][v] < key[v] {
                    key[v] = graph[u][v]
                }
            }
        }
        return totalWeight
    }
}

func compute() {
    let pm = PrimMST()
    let graph = [
        [0, 2, 0, 6, 0],
        [2, 0, 3, 8, 5],
        [0, 3, 0, 0, 7],
        [6, 8, 0, 0, 9],
        [0, 5, 7, 9, 0]
    ]
    print("Prim MST Cost:", pm.mst(nodes: 5, graph: graph))
}

compute()
