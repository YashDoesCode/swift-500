struct TernarySearch {
    func search(array: [Int], target: Int, left: Int, right: Int) -> Int? {
        guard right >= left else { return nil }
        let mid1 = left + (right - left) / 3
        let mid2 = right - (right - left) / 3
        if array[mid1] == target { return mid1 }
        if array[mid2] == target { return mid2 }
        if target < array[mid1] {
            return search(array: array, target: target, left: left, right: mid1 - 1)
        } else if target > array[mid2] {
            return search(array: array, target: target, left: mid2 + 1, right: right)
        } else {
            return search(array: array, target: target, left: mid1 + 1, right: mid2 - 1)
        }
    }
}

func search() {
    let ts = TernarySearch()
    let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    print("Found 6 at:", ts.search(array: arr, target: 6, left: 0, right: arr.count - 1) ?? -1)
}

search()
