struct StringSet: ExpressibleByArrayLiteral {
    var elements: Set<String>

    init(arrayLiteral elements: String...) {
        self.elements = Set(elements)
    }
}

func express() {
    let set: StringSet = ["apple", "banana", "apple"]
    print("Set count:", set.elements.count)
}

express()
