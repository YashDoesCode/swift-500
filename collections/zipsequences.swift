struct Zipper {
    func combine(keys: [String], values: [Int]) -> [(String, Int)] {
        return Array(zip(keys, values))
    }
}

func combine() {
    let z = Zipper()
    let pairs = z.combine(keys: ["a", "b", "c"], values: [1, 2, 3])
    print("Pairs:", pairs)
}

combine()
