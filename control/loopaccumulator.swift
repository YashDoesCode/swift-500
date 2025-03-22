struct Accumulator {
    func sum(upTo limit: Int) -> Int {
        var total = 0
        for i in 1...limit {
            total += i
        }
        return total
    }
}

func calculate() {
    let acc = Accumulator()
    print("Sum to 10:", acc.sum(upTo: 10))
}

calculate()
