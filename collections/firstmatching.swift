struct Finder {
    func findFirstEven(in list: [Int]) -> Int? {
        return list.first { $0 % 2 == 0 }
    }
}

func find() {
    let f = Finder()
    print("First even in [1, 3, 6, 7]:", f.findFirstEven(in: [1, 3, 6, 7]) ?? -1)
}

find()
