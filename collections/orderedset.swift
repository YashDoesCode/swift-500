struct OrderedUniqueList<T: Hashable> {
    var elements: [T] = []
    var set: Set<T> = []

    mutating func append(item: T) {
        if set.insert(item).inserted {
            elements.append(item)
        }
    }
}

func order() {
    var list = OrderedUniqueList<String>()
    list.append(item: "alpha")
    list.append(item: "beta")
    list.append(item: "alpha")
    print("Ordered unique list:", list.elements)
}

order()
