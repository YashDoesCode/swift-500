struct DictMerger {
    func merge(first: [String: Int], second: [String: Int]) -> [String: Int] {
        return first.merging(second) { current, new in current + new }
    }
}

func merge() {
    let dm = DictMerger()
    let a = ["apple": 5, "orange": 3]
    let b = ["apple": 2, "banana": 4]
    print("Merged:", dm.merge(first: a, second: b))
}

merge()
