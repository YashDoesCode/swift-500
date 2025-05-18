struct Dropper {
    func trim(numbers: [Int]) -> [Int] {
        return Array(numbers.drop(while: { $0 < 5 }))
    }
}

func trim() {
    let d = Dropper()
    print("Dropped:", d.trim(numbers: [1, 2, 3, 4, 5, 6, 2]))
}

trim()
