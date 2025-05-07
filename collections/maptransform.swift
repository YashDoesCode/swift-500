struct ListTransformer {
    func square(numbers: [Int]) -> [Int] {
        return numbers.map { $0 * $0 }
    }
}

func transform() {
    let lt = ListTransformer()
    print("Squares:", lt.square(numbers: [1, 2, 3, 4, 5]))
}

transform()
