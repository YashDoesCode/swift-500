struct DictionaryWalker {
    func iterate(data: [String: Int]) {
        for (k, v) in data.sorted(by: { $0.key < $1.key }) {
            print("Key: \(k), Value: \(v)")
        }
    }
}

func iterate() {
    let dw = DictionaryWalker()
    dw.iterate(data: ["beta": 2, "alpha": 1, "gamma": 3])
}

iterate()
