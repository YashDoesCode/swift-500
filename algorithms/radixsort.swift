struct RadixSort {
    func sort(array: inout [Int]) {
        guard let maxVal = array.max() else { return }
        var exp = 1
        while maxVal / exp > 0 {
            countSort(array: &array, exp: exp)
            exp *= 10
        }
    }

    func countSort(array: inout [Int], exp: Int) {
        var output = Array(repeating: 0, count: array.count)
        var count = Array(repeating: 0, count: 10)
        for num in array {
            count[(num / exp) % 10] += 1
        }
        for i in 1..<10 {
            count[i] += count[i - 1]
        }
        for i in stride(from: array.count - 1, through: 0, by: -1) {
            let digit = (array[i] / exp) % 10
            output[count[digit] - 1] = array[i]
            count[digit] -= 1
        }
        for i in 0..<array.count {
            array[i] = output[i]
        }
    }
}

func sort() {
    let rs = RadixSort()
    var arr = [170, 45, 75, 90, 802, 24, 2, 66]
    rs.sort(array: &arr)
    print("Radix sorted:", arr)
}

sort()
