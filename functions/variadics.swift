struct Aggregate {
    func sum(numbers: Int...) -> Int {
        var total = 0
        for n in numbers {
            total += n
        }
        return total
    }
}

func sum() {
    let agg = Aggregate()
    print("Total:", agg.sum(numbers: 1, 2, 3, 4, 5))
    print("Total:", agg.sum(numbers: 10, 20))
}

sum()
