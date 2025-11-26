struct TwoPointer {
    func twoSum(sortedArray: [Int], target: Int) -> (Int, Int)? {
        var left = 0
        var right = sortedArray.count - 1
        while left < right {
            let sum = sortedArray[left] + sortedArray[right]
            if sum == target { return (left, right) }
            else if sum < target { left += 1 }
            else { right -= 1 }
        }
        return nil
    }
}

func search() {
    let tp = TwoPointer()
    if let (i, j) = tp.twoSum(sortedArray: [2, 7, 11, 15], target: 9) {
        print("Two sum pair indices:", i, j)
    }
}

search()
