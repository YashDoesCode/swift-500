struct BucketSort {
    func sort(array: [Int]) -> [Int] {
        guard let maxVal = array.max(), maxVal > 0 else { return array }
        var buckets: [[Int]] = Array(repeating: [], count: 5)
        for val in array {
            let idx = min((val * 5) / (maxVal + 1), 4)
            buckets[idx].append(val)
        }
        var result: [Int] = []
        for bucket in buckets {
            result.append(contentsOf: bucket.sorted())
        }
        return result
    }
}

func sort() {
    let bs = BucketSort()
    print("Bucket sorted:", bs.sort(array: [29, 25, 3, 49, 9, 37, 21, 43]))
}

sort()
