struct SequenceClipper {
    func clip(items: [Int]) {
        print("Prefix 3:", Array(items.prefix(3)))
        print("Suffix 2:", Array(items.suffix(2)))
    }
}

func clip() {
    let sc = SequenceClipper()
    sc.clip(items: [1, 2, 3, 4, 5, 6])
}

clip()
