struct ShellSort {
    func sort(array: inout [Int]) {
        var gap = array.count / 2
        while gap > 0 {
            for i in gap..<array.count {
                let temp = array[i]
                var j = i
                while j >= gap && array[j - gap] > temp {
                    array[j] = array[j - gap]
                    j -= gap
                }
                array[j] = temp
            }
            gap /= 2
        }
    }
}

func sort() {
    let ss = ShellSort()
    var arr = [12, 34, 54, 2, 3]
    ss.sort(array: &arr)
    print("Shell sorted:", arr)
}

sort()
