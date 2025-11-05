struct ExponentialSearch {
    func search(array: [Int], target: Int) -> Int? {
        if array.isEmpty { return nil }
        if array[0] == target { return 0 }
        var bound = 1
        while bound < array.count && array[bound] <= target {
            bound *= 2
        }
        let low = bound / 2
        let high = min(bound, array.count - 1)
        for i in low...high {
            if array[i] == target { return i }
        }
        return nil
    }
}

func search() {
    let es = ExponentialSearch()
    print("Found 16 at:", es.search(array: [2, 4, 8, 16, 32, 64], target: 16) ?? -1)
}

search()
