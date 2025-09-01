func findIndex<T: Equatable>(of valueToFind: T, in array: [T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

func find() {
    let strings = ["cat", "dog", "llama"]
    print("Found dog at:", findIndex(of: "dog", in: strings) ?? -1)
}

find()
