struct JumpSearch {
    func search(array: [Int], target: Int) -> Int? {
        let n = array.count
        var step = 2
        var prev = 0
        while step < n && array[min(step, n) - 1] < target {
            prev = step
            step += 2
        }
        while prev < min(step, n) {
            if array[prev] == target { return prev }
            prev += 1
        }
        return nil
    }
}

func search() {
    let js = JumpSearch()
    print("Found 55 at:", js.search(array: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89], target: 55) ?? -1)
}

search()
