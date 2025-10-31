struct HeapSort {
    func sort(array: inout [Int]) {
        let count = array.count
        for i in stride(from: count / 2 - 1, through: 0, by: -1) {
            heapify(array: &array, count: count, i: i)
        }
        for i in stride(from: count - 1, through: 1, by: -1) {
            let temp = array[0]
            array[0] = array[i]
            array[i] = temp
            heapify(array: &array, count: i, i: 0)
        }
    }

    func heapify(array: inout [Int], count: Int, i: Int) {
        var largest = i
        let left = 2 * i + 1
        let right = 2 * i + 2
        if left < count && array[left] > array[largest] { largest = left }
        if right < count && array[right] > array[largest] { largest = right }
        if largest != i {
            let temp = array[i]
            array[i] = array[largest]
            array[largest] = temp
            heapify(array: &array, count: count, i: largest)
        }
    }
}

func sort() {
    let hs = HeapSort()
    var arr = [12, 11, 13, 5, 6, 7]
    hs.sort(array: &arr)
    print("Heap sorted:", arr)
}

sort()
