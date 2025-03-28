func makeIncrementer(amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

func increment() {
    let stepByTen = makeIncrementer(amount: 10)
    print("Step 1:", stepByTen())
    print("Step 2:", stepByTen())
}

increment()
