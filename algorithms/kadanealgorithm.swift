struct Kadane {
    func maxSubarraySum(array: [Int]) -> Int {
        var maxSoFar = array[0]
        var currMax = array[0]
        for i in 1..<array.count {
            currMax = max(array[i], currMax + array[i])
            maxSoFar = max(maxSoFar, currMax)
        }
        return maxSoFar
    }
}

func solve() {
    let k = Kadane()
    print("Max subarray sum:", k.maxSubarraySum(array: [-2, 1, -3, 4, -1, 2, 1, -5, 4]))
}

solve()
