struct Membership {
    func check() {
        let small: Set<Int> = [1, 2]
        let big: Set<Int> = [1, 2, 3, 4]
        print("Subset:", small.isSubset(of: big))
        print("Superset:", big.isSuperset(of: small))
        print("Disjoint:", small.isDisjoint(with: [5, 6]))
    }
}

func check() {
    let m = Membership()
    m.check()
}

check()
