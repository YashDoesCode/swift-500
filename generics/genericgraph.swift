class Graph<T: Hashable> {
    private var adjacencyList: [T: [T]] = [:]

    func addEdge(from source: T, to destination: T) {
        adjacencyList[source, default: []].append(destination)
    }

    func neighbors(for node: T) -> [T] {
        return adjacencyList[node] ?? []
    }
}

func graph() {
    let g = Graph<String>()
    g.addEdge(from: "A", to: "B")
    g.addEdge(from: "A", to: "C")
    print("A neighbors:", g.neighbors(for: "A"))
}

graph()
