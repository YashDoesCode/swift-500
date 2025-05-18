struct Permuter {
    func permute(items: [Int]) -> [Int] {
        return items.reversed()
    }
}

func permute() {
    let p = Permuter()
    print("Permuted:", p.permute(items: [1, 2, 3, 4]))
}

permute()
