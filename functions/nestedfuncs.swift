struct FilterEngine {
    func filter(numbers: [Int]) -> [Int] {
        func isEven(n: Int) -> Bool {
            return n % 2 == 0
        }
        var result: [Int] = []
        for n in numbers {
            if isEven(n: n) {
                result.append(n)
            }
        }
        return result
    }
}

func filter() {
    let engine = FilterEngine()
    print("Evens:", engine.filter(numbers: [1, 2, 3, 4, 5, 6]))
}

filter()
