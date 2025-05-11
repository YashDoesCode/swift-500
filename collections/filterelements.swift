struct FilterOps {
    func evens(from list: [Int]) -> [Int] {
        return list.filter { $0 % 2 == 0 }
    }
}

func filter() {
    let fo = FilterOps()
    print("Evens:", fo.evens(from: [1, 2, 3, 4, 5, 6, 7, 8]))
}

filter()
