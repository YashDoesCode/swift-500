struct QuickSort {
    func sort(array: [Int]) -> [Int] {
        guard array.count > 1 else { return array }
        let pivot = array[array.count / 2]
        let less = array.filter { $0 < pivot }
        let equal = array.filter { $0 == pivot }
        let greater = array.filter { $0 > pivot }
        return sort(array: less) + equal + sort(array: greater)
    }
}

func sort() {
    let qs = QuickSort()
    let sorted = qs.sort(array: [10, 7, 8, 9, 1, 5])
    print("Quick sorted:", sorted)
}

sort()
