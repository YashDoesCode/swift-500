struct Transformer {
    func map(values: [Int], transform: (Int) -> Int) -> [Int] {
        var result: [Int] = []
        for v in values {
            result.append(transform(v))
        }
        return result
    }
}

func square(n: Int) -> Int {
    return n * n
}

func transform() {
    let t = Transformer()
    print("Squared:", t.map(values: [1, 2, 3, 4], transform: square))
}

transform()
