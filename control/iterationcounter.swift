struct LoopCounter {
    func countIterations() {
        var count = 0
        for _ in 1...5 {
            count += 1
        }
        print("Total iterations:", count)
    }
}

func count() {
    let lc = LoopCounter()
    lc.countIterations()
}

count()
