struct BinarySearch {
    func search(array: [Int], target: Int) -> Int? {
        var low = 0
        var high = array.count - 1
        while low <= high {
            let mid = low + (high - low) / 2
            if array[mid] == target { return mid }
            if array[mid] < target { low = mid + 1 }
            else { high = mid - 1 }
        }
        return nil
    }
}

func search() {
    let bs = BinarySearch()
    print("Found 25 at:", bs.search(array: [5, 10, 15, 20, 25, 30], target: 25) ?? -1)
}

search()
