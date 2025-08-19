struct FixedArray: Collection {
    let elements = [10, 20, 30]
    var startIndex: Int { return 0 }
    var endIndex: Int { return elements.count }

    func index(after i: Int) -> Int {
        return i + 1
    }

    subscript(position: Int) -> Int {
        return elements[position]
    }
}

func collect() {
    let fa = FixedArray()
    print("Count:", fa.count)
    print("First:", fa.first ?? -1)
}

collect()
