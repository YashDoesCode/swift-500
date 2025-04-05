struct Statistics {
    func compute(values: [Int]) -> (min: Int, max: Int, sum: Int) {
        var minVal = values.first ?? 0
        var maxVal = values.first ?? 0
        var sumVal = 0
        for v in values {
            if v < minVal { minVal = v }
            if v > maxVal { maxVal = v }
            sumVal += v
        }
        return (minVal, maxVal, sumVal)
    }
}

func summarize() {
    let stats = Statistics()
    let res = stats.compute(values: [8, 3, 9, 1, 6])
    print("Min:", res.min, "Max:", res.max, "Sum:", res.sum)
}

summarize()
