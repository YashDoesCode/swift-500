struct Doubler {
    func double(numbers: [Int]) -> [Int] {
        return numbers.map { $0 * 2 }
    }
}

func double() {
    let d = Doubler()
    print("Doubled:", d.double(numbers: [10, 20, 30]))
}

double()
