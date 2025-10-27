struct MergeSort {
    func sort(array: [Int]) -> [Int] {
        guard array.count > 1 else { return array }
        let mid = array.count / 2
        let left = sort(array: Array(array[0..<mid]))
        let right = sort(array: Array(array[mid..<array.count]))
        return merge(left: left, right: right)
    }

    func merge(left: [Int], right: [Int]) -> [Int] {
        var result: [Int] = []
        var i = 0
        var j = 0
        while i < left.count && j < right.count {
            if left[i] < right[j] {
                result.append(left[i])
                i += 1
            } else {
                result.append(right[j])
                j += 1
            }
        }
        result.append(contentsOf: left[i...])
        result.append(contentsOf: right[j...])
        return result
    }
}

func sort() {
    let ms = MergeSort()
    let sorted = ms.sort(array: [38, 27, 43, 3, 9, 82, 10])
    print("Merge sorted:", sorted)
}

sort()
