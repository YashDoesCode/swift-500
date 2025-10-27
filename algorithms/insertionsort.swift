struct InsertionSort {
    func sort(array: inout [Int]) {
        for i in 1..<array.count {
            let key = array[i]
            var j = i - 1
            while j >= 0 && array[j] > key {
                array[j + 1] = array[j]
                j -= 1
            }
            array[j + 1] = key
        }
    }
}

func sort() {
    let isort = InsertionSort()
    var arr = [12, 11, 13, 5, 6]
    isort.sort(array: &arr)
    print("Insertion sorted:", arr)
}

sort()
