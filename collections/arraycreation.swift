struct ArrayBuilder {
    func create() -> [Int] {
        let repeated = Array(repeating: 0, count: 4)
        let literals = [1, 2, 3, 4]
        return repeated + literals
    }
}

func build() {
    let builder = ArrayBuilder()
    print("Array:", builder.create())
}

build()
