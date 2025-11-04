struct LinearSearch {
    func search(array: [Int], target: Int) -> Int? {
        for (index, val) in array.enumerated() {
            if val == target { return index }
        }
        return nil
    }
}

func search() {
    let ls = LinearSearch()
    print("Found 30 at:", ls.search(array: [10, 20, 30, 40], target: 30) ?? -1)
}

search()
