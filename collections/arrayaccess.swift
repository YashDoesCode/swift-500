struct SafeAccess {
    func retrieve(list: [Int], index: Int) -> Int? {
        guard index >= 0 && index < list.count else {
            return nil
        }
        return list[index]
    }
}

func access() {
    let sa = SafeAccess()
    let nums = [10, 20, 30]
    print("At 1:", sa.retrieve(list: nums, index: 1) ?? -1)
    print("At 5:", sa.retrieve(list: nums, index: 5) ?? -1)
}

access()
