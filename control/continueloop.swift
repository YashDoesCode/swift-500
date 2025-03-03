struct FilterLoop {
    func process(numbers: [Int]) {
        for num in numbers {
            if num % 2 != 0 {
                continue
            }
            print("Even:", num)
        }
    }
}

func process() {
    let filter = FilterLoop()
    filter.process(numbers: [1, 2, 3, 4, 5, 6])
}

process()
