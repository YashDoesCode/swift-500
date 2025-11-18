struct PowerSet {
    func generate(elements: [Int]) -> [[Int]] {
        var result: [[Int]] = [[]]
        for element in elements {
            for subset in result {
                result.append(subset + [element])
            }
        }
        return result
    }
}

func generate() {
    let ps = PowerSet()
    print("Power set [1, 2]:", ps.generate(elements: [1, 2]))
}

generate()
