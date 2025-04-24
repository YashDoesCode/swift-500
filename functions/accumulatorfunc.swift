func makeAccumulator() -> (Int) -> Int {
    var sum = 0
    return { value in
        sum += value
        return sum
    }
}

func accumulate() {
    let acc = makeAccumulator()
    print("Acc 10:", acc(10))
    print("Acc 20:", acc(20))
    print("Acc 30:", acc(30))
}

accumulate()
