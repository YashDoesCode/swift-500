struct CountingSort {
    func sort(array: [Int]) -> [Int] {
        guard let maxVal = array.max(), let minVal = array.min() else { return array }
        let range = maxVal - minVal + 1
        var count = Array(repeating: 0, count: range)
        for num in array {
            count[num - minVal] += 1
        }
        var result: [Int] = []
        for (index, occurrences) in count.enumerated() {
            result.append(contentsOf: Array(repeating: index + minVal, count: occurrences))
        }
        return result
    }
}

func sort() {
    let cs = CountingSort()
    let sorted = cs.sort(array: [4, 2, 2, 8, 3, 3, 1])
    print("Counting sorted:", sorted)
}

sort()
