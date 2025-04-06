struct Reducer {
    func fold(numbers: [Int], initial: Int, combine: (Int, Int) -> Int) -> Int {
        var accumulator = initial
        for n in numbers {
            accumulator = combine(accumulator, n)
        }
        return accumulator
    }
}

func fold() {
    let r = Reducer()
    let product = r.fold(numbers: [1, 2, 3, 4, 5], initial: 1, combine: *)
    print("Product fold:", product)
}

fold()
