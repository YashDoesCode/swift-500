struct BubbleSort {
    func sort(array: inout [Int]) {
        guard array.count > 1 else { return }
        for i in 0..<array.count {
            for j in 1..<array.count - i {
                if array[j - 1] > array[j] {
                    let temp = array[j - 1]
                    array[j - 1] = array[j]
                    array[j] = temp
                }
            }
        }
    }
}

func sort() {
    let bs = BubbleSort()
    var arr = [64, 34, 25, 12, 22, 11, 90]
    bs.sort(array: &arr)
    print("Bubble sorted:", arr)
}

sort()
