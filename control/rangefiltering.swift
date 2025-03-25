struct NumberFilter {
    func collectMultiples(factor: Int, within range: ClosedRange<Int>) -> [Int] {
        var result: [Int] = []
        for val in range {
            if val % factor == 0 {
                result.append(val)
            }
        }
        return result
    }
}

func collect() {
    let nf = NumberFilter()
    print("Multiples of 3:", nf.collectMultiples(factor: 3, within: 1...20))
}

collect()
