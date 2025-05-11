struct SorterOps {
    func sortDescending(numbers: [Int]) -> [Int] {
        return numbers.sorted(by: >)
    }
}

func sort() {
    let so = SorterOps()
    print("Descending:", so.sortDescending(numbers: [5, 1, 9, 3, 7]))
}

sort()
