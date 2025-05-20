class DataSet {
    var elements: [Int] = []

    func add(item: Int) {
        elements.append(item)
    }

    func summary() -> String {
        return "Elements count: \(elements.count)"
    }
}

func summarize() {
    let ds = DataSet()
    ds.add(item: 10)
    ds.add(item: 20)
    print(ds.summary())
}

summarize()
