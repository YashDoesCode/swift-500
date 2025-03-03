struct Counter {
    func countdown(from start: Int) {
        var n = start
        while n > 0 {
            print("Count:", n)
            n -= 1
        }
    }
}

func countdown() {
    let c = Counter()
    c.countdown(from: 3)
}

countdown()
