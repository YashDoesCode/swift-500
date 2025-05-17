struct Slicer {
    func sublist(items: [Int], from start: Int, to end: Int) -> [Int] {
        let slice = items[start...end]
        return Array(slice)
    }
}

func slice() {
    let s = Slicer()
    let numbers = [10, 20, 30, 40, 50, 60]
    print("Slice 1...3:", s.sublist(items: numbers, from: 1, to: 3))
}

slice()
