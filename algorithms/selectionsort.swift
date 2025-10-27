struct SelectionSort {
    func sort(array: inout [Int]) {
        for i in 0..<array.count {
            var minIndex = i
            for j in (i + 1)..<array.count {
                if array[j] < array[minIndex] {
                    minIndex = j
                }
            }
            if minIndex != i {
                let temp = array[i]
                array[i] = array[minIndex]
                array[minIndex] = temp
            }
        }
    }
}

func sort() {
    let ss = SelectionSort()
    var arr = [29, 10, 14, 37, 13]
    ss.sort(array: &arr)
    print("Selection sorted:", arr)
}

sort()
